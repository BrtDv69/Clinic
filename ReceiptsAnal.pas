unit ReceiptsAnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeList, cxGridCustomPopupMenu, cxGridPopupMenu, DB, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxInplaceContainer,
  cxTL, cxDBTL, cxTLData, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmReceiptsAnal = class(TfrmLikeList)
    tlGroups: TcxDBTreeList;
    tlGroupsNAME: TcxDBTreeListColumn;
    tlGroupsID: TcxDBTreeListColumn;
    tlGroupsPARENT_ID: TcxDBTreeListColumn;
    cxSplitter2: TcxSplitter;
    fibdsGoodsServices: TpFIBDataSet;
    dsGoodsServices: TDataSource;
    fibdsGoodsServicesID: TFIBIntegerField;
    fibdsGoodsServicesPARENT_ID: TFIBIntegerField;
    fibdsGoodsServicesNAME: TFIBStringField;
    fibdsGoodsServicesCOMMENTS: TFIBStringField;
    fibdsGoodsServicesAMOUNT: TFIBFloatField;
    fibdsGoodsServicesNAME_WITH_AMOUNT: TFIBStringField;
    Panel3: TPanel;
    cxLabel12: TcxLabel;
    cxLabel1: TcxLabel;
    deStart: TcxDateEdit;
    deStop: TcxDateEdit;
    fibdsMainListNAME: TFIBStringField;
    fibdsMainListDEPARTMENT_ID: TFIBIntegerField;
    fibdsMainListQUANTITY: TFIBBCDField;
    fibdsMainListAMOUNT: TFIBFloatField;
    tvMainListNAME: TcxGridDBColumn;
    tvMainListDEPARTMENT_ID: TcxGridDBColumn;
    tvMainListQUANTITY: TcxGridDBColumn;
    tvMainListAMOUNT: TcxGridDBColumn;
    procedure OpenAll; override;
    procedure fibdsGoodsServicesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure fibdsGoodsServicesBeforeOpen(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxSplitter2AfterClose(Sender: TObject);
    procedure cxSplitter2AfterOpen(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReceiptsAnal: TfrmReceiptsAnal;

implementation

uses DM;

var DMTagIncreased: Boolean = False;

{$R *.dfm}

procedure TfrmReceiptsAnal.OpenAll;
begin
 inherited;
 If Not(frmDM.trMain.InTransaction) then
  frmDM.trMain.StartTransaction;
 frmDM.fibdsDepartments.Open;
 If Not(DMTagIncreased) then
  Begin
   DMTagIncreased := True;
   frmDM.fibdsDepartments.Tag := Succ(frmDM.fibdsDepartments.Tag)
  End;
 If (cxSplitter2.State=ssOpened) then
  Begin
   fibdsGoodsServices.ReopenLocate('ID');
   tlGroups.FullExpand
  End;
 fibdsMainList.FullRefresh
end;

procedure TfrmReceiptsAnal.fibdsGoodsServicesCalcFields(DataSet: TDataSet);
begin
 fibdsGoodsServicesNAME_WITH_AMOUNT.Value := fibdsGoodsServicesNAME.AsString+' ('+FormatFloat('#,##0.00р',fibdsGoodsServicesAMOUNT.AsFloat)+'.)'
end;

procedure TfrmReceiptsAnal.FormCreate(Sender: TObject);
 var D, M, Y: Word;
begin
 FName := 'Анализ квитанций';
 inherited;
 DecodeDate(Date, Y, M, D);
 If (M > 1) then
  Begin
   deStart.Date := EncodeDate(Y, M-1, 1);
   deStop.Date := EncodeDate(Y, M, 1)-1;
  End
 else
  Begin
   deStart.Date := EncodeDate(Y-1, 12, 1);
   deStop.Date := EncodeDate(Y, M, 1)-1;
  End
end;

procedure TfrmReceiptsAnal.fibdsGoodsServicesBeforeOpen(DataSet: TDataSet);
begin
 TpFIBDataSet(DataSet).ParamByName('START').AsDate := deStart.Date;
 TpFIBDataSet(DataSet).ParamByName('STOP').AsDate := deStop.Date
end;

procedure TfrmReceiptsAnal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 If (frmDM.fibdsDepartments.Tag=1) then
  frmDM.fibdsDepartments.Close
 else
  frmDM.fibdsDepartments.Tag := Pred(frmDM.fibdsDepartments.Tag);
 inherited  
end;

procedure TfrmReceiptsAnal.cxSplitter2AfterClose(Sender: TObject);
begin
 fibdsMainList.Close;
 fibdsMainList.SelectSQL[4] := '';
 fibdsMainList.DataSource := nil;
 OpenAll
end;

procedure TfrmReceiptsAnal.cxSplitter2AfterOpen(Sender: TObject);
begin
 fibdsMainList.Close;
 fibdsMainList.SelectSQL[4] := 'and (GS.PARENT_ID=:ID)';
 fibdsMainList.DataSource := dsGoodsServices;
 OpenAll
end;

end.
