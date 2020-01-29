unit AdminReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, dxBar,
  DB, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter, pFIBQuery,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, ExtCtrls, frxClass;

type
  TfrmAdminReports = class(TForm)
    dxBarManager1: TdxBarManager;
    sbFirst: TdxBarButton;
    sbPrior: TdxBarButton;
    sbNext: TdxBarButton;
    sbLast: TdxBarButton;
    sbAdd: TdxBarButton;
    sbDelete: TdxBarButton;
    sbDesign: TdxBarButton;
    sbApply: TdxBarButton;
    sbCancel: TdxBarButton;
    sbClose: TdxBarButton;
    sbFilter: TdxBarButton;
    trMain: TpFIBTransaction;
    fibdsMainList: TpFIBDataSet;
    dsMainList: TDataSource;
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListREPORT_NAME: TFIBStringField;
    fibdsMainListDEFAULT_PRINTING: TFIBIntegerField;
    fibdsMainListCOMMENTS: TFIBStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    Label339: TLabel;
    dbmComments: TcxDBMemo;
    cxSplitter1: TcxSplitter;
    grdMainList: TcxGrid;
    tvMainList: TcxGridDBTableView;
    lvMainList: TcxGridLevel;
    tvMainListREPORT_NAME: TcxGridDBColumn;
    tvMainListDEFAULT_PRINTING: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    fibdsReportShowing: TpFIBDataSet;
    dsReportShowing: TDataSource;
    fibdsReportShowingID: TFIBIntegerField;
    fibdsReportShowingREPORT_ID: TFIBIntegerField;
    fibdsReportShowingSENDER_NAME: TFIBStringField;
    procedure Run(Sender: TObject);
    procedure fibdsMainListUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure fibdsMainListAfterDelete(DataSet: TDataSet);
    procedure dsMainListStateChange(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbDesignClick(Sender: TObject);
    function SaveReport(Report: TfrxReport; SaveAs: Boolean): Boolean;
    procedure sbFilterClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenAll;
    procedure SetACButtons(Enabled : Boolean);
  public
    { Public declarations }
  end;

var
  frmAdminReports: TfrmAdminReports;

implementation

uses Misk, FIBQuery, DM, About;

{$R *.dfm}

procedure TfrmAdminReports.Run(Sender: TObject);
begin
 fibdsMainList.ParamByName('SENDER').AsString := ReportGetSenderName(TComponent(Sender));
 OpenAll;
 ShowModal
end;

procedure TfrmAdminReports.OpenAll;
begin
 If Not(trMain.InTransaction) then
  trMain.StartTransaction;
 fibdsMainList.FullRefresh;
 fibdsReportShowing.FullRefresh
end;

procedure TfrmAdminReports.fibdsMainListUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
begin
 UpdateAction := uaApply;
 If (UpdateKind=ukInsert) then
  Begin
   fibdsReportShowing.Insert;
   fibdsReportShowingREPORT_ID.Value := fibdsMainListID.Value;
   fibdsReportShowingSENDER_NAME.Value := fibdsMainList.ParamByName('SENDER').AsString
  End
end;

procedure TfrmAdminReports.sbAddClick(Sender: TObject);
begin
 If (MessageDlg('Хотите создать новый отчет?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   grdMainList.SetFocus;
   tvMainList.DataController.Append
  End
end;

procedure TfrmAdminReports.sbDeleteClick(Sender: TObject);
 var fibqLocalAux : TpFIBQuery;
     S : String;
begin
 If (MessageDlg('Хотите удалить текущий отчет?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMainList.Database;
   fibqLocalAux.Transaction := fibdsMainList.Transaction;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('select RS.SENDER_NAME from REPORTS_SHOING RS where (RS.REPORT_ID='+fibdsMainListID.AsString+')');
   fibqLocalAux.ExecQuery;
   S := '';
   While Not(fibqLocalAux.Eof) do
    Begin
     S := S+' '+Copy(fibqLocalAux.Fields[0].AsString,1,Pos(' - Печать',fibqLocalAux.Fields[0].AsString)-1);
     fibqLocalAux.Next;
     If Not(fibqLocalAux.Eof) then
      S := S+';'
    End;  // while
   fibqLocalAux.Free;
   If (Pos(';',S)>0) then
    If (MessageDlg('Отчет используется в следующих формах:'+S+'. Всё равно удалять?',mtConfirmation,mbOKCancel,0)<>mrOK) then
     Exit;
   grdMainList.SetFocus;
   tvMainList.DataController.DeleteFocused
  End
end;

procedure TfrmAdminReports.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.ApplyUpdates;
   fibdsReportShowing.ApplyUpdates;
   trMain.Commit;
   OpenAll;
   SetACButtons(False)
  End
end;

procedure TfrmAdminReports.SetACButtons(Enabled : Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

procedure TfrmAdminReports.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   fibdsReportShowing.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmAdminReports.fibdsMainListAfterDelete(DataSet: TDataSet);
begin
 SetACButtons(True)
end;

procedure TfrmAdminReports.dsMainListStateChange(Sender: TObject);
begin
 SetACButtons((fibdsMainList.State in [dsEdit,dsInsert]) or (fibdsMainList.UpdatesPending))
end;

procedure TfrmAdminReports.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmAdminReports.FormCreate(Sender: TObject);
begin
 cxSplitter1.CloseSplitter
end;

procedure TfrmAdminReports.sbDesignClick(Sender: TObject);
begin
 frmDM.frxReport.Clear;
 GetReport(fibdsMainList.Database, fibdsMainList.Transaction, fibdsMainListID.AsInteger, fibdsMainListREPORT_NAME.AsString);
 frmDM.frxDesigner.OnSaveReport := SaveReport;
 frmDM.frxReport.DesignReport
end;

function TfrmAdminReports.SaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
 var fibqLocalAux : TpFIBQuery;
     MS: TMemoryStream;
     S : String;
begin
 Result := False;
 If (SaveAs) then
  Begin
   If (frmDM.opd.Execute) then
    Begin
     S := ExtractFileExt(frmDM.opd.FileName);
     If (S<>'.'+frmDM.opd.DefaultExt) then
      Begin
       S := '.'+frmDM.opd.DefaultExt;
       frmDM.opd.FileName := ChangeFileExt(frmDM.opd.FileName,S)
      End;
     If (S='.fr3') then
      Report.SaveToFile(frmDM.opd.FileName);
     Result := True
    End
  End
 else
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMainList.Database;
   fibqLocalAux.Transaction := fibdsMainList.Transaction;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('update REPORTS R set R.REPORT=:REPORT where (R.ID='+fibdsMainListID.AsString+')');
   MS := TMemoryStream.Create;
   try
    Report.SaveToStream(MS);
    fibqLocalAux.Params[0].LoadFromStream(MS);
   finally
    MS.Free
   end;
   fibqLocalAux.ExecQuery;
   fibqLocalAux.Free;
   trMain.CommitRetaining;
   Result := True
  End
end;

procedure TfrmAdminReports.sbFilterClick(Sender: TObject);
begin
 GetReport(fibdsMainList.Database, fibdsMainList.Transaction, fibdsMainListID.AsInteger, fibdsMainListREPORT_NAME.AsString);
 frmDM.frxReport.ShowReport
end;

end.
