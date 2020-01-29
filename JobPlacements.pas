unit JobPlacements;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeList, cxGridCustomPopupMenu, cxGridPopupMenu, DB, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxInplaceContainer,
  cxTL, cxDBTL, cxTLData, cxGraphics, cxCalendar, pFIBQuery;

type
  TfrmJobPlacements = class(TfrmLikeList)
    tlGroups: TcxDBTreeList;
    tlGroupsNAME: TcxDBTreeListColumn;
    tlGroupsID: TcxDBTreeListColumn;
    tlGroupsPARENT_ID: TcxDBTreeListColumn;
    cxSplitter2: TcxSplitter;
    fibdsDepartments: TpFIBDataSet;
    dsDepartments: TDataSource;
    fibdsDepartmentsID: TFIBIntegerField;
    fibdsDepartmentsPARENT_ID: TFIBIntegerField;
    fibdsDepartmentsNAME: TFIBStringField;
    fibdsDepartmentsVALID: TFIBIntegerField;
    fibdsDepartmentsCOMMENTS: TFIBStringField;
    fibdsDepartmentsWORKER_COUNT: TFIBIntegerField;
    fibdsDepartmentsNAME_WITH_COUNT: TFIBStringField;
    tlGroupsWORKER_COUNT: TcxDBTreeListColumn;
    fibdsMainListDEPARTMENT_ID: TFIBIntegerField;
    fibdsMainListPERSON_ID: TFIBIntegerField;
    fibdsMainListJOB_ID: TFIBIntegerField;
    fibdsMainListCOMMENTS: TFIBStringField;
    tvMainListDEPARTMENT_ID: TcxGridDBColumn;
    tvMainListPERSON_ID: TcxGridDBColumn;
    tvMainListJOB_ID: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlGroupsCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure sbApplyClick(Sender: TObject);
    procedure fibdsDepartmentsBeforeScroll(DataSet: TDataSet);
    procedure sbCancelClick(Sender: TObject);
    procedure fibdsMainListAfterOpen(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpenAll; override;
    procedure Run(ID : Integer); override;
    procedure fibdsDepartmentsCalcFields(DataSet: TDataSet);
    procedure fibdsMainListBeforeOpen(DataSet: TDataSet);
    procedure cxSplitter2AfterClose(Sender: TObject);
    procedure fibdsMainListNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJobPlacements: TfrmJobPlacements;

implementation

uses DM, GoodsAndServices, Main, Departments, Jobs, Persons;

{$R *.dfm}

var BkMrkDepartments: String = '';
    DMTagIncreased: Boolean = False;
    BkMrkPersonIDMainList: Integer = 0;
    BkMrkJobIDMainList: Integer = 0;

procedure TfrmJobPlacements.FormCreate(Sender: TObject);
begin
 FName := 'Занимаемые должности';
 inherited;
end;

procedure TfrmJobPlacements.Run(ID : Integer);
begin
 OpenAll;
 Show
end;

procedure TfrmJobPlacements.OpenAll;
begin
 inherited;
 If Not(frmDM.trMain.InTransaction) then
  frmDM.trMain.StartTransaction;
 frmDM.fibdsDepartments.Open;
 frmDM.fibdsJobs.Open;
 frmDM.fibdsPersons.Open;
 If Not(DMTagIncreased) then
  Begin
   DMTagIncreased := True;
   frmDM.fibdsDepartments.Tag := Succ(frmDM.fibdsDepartments.Tag);
   frmDM.fibdsJobs.Tag := Succ(frmDM.fibdsJobs.Tag);
   frmDM.fibdsPersons.Tag := Succ(frmDM.fibdsPersons.Tag)
  End;
 If (fibdsDepartments.Active) then
  fibdsDepartments.ReopenLocate('ID')
 else
  Begin
   fibdsDepartments.FullRefresh;
   If (BkMrkDepartments<>'') then
    fibdsDepartments.Bookmark := BkMrkDepartments
  End;
 If (fibdsMainList.Active) then
  fibdsMainList.ReopenLocate('DEPARTMENT_ID;PERSON_ID;JOB_ID')
 else
  Begin
   fibdsMainList.FullRefresh;
   If (BkMrkPersonIDMainList<>0) and (BkMrkJobIDMainList<>0) then
    fibdsMainList.Locate('PERSON_ID;JOB_ID',VarArrayOf([BkMrkPersonIDMainList,BkMrkJobIDMainList]),[])
  End;
 tlGroups.FullExpand
end;

procedure TfrmJobPlacements.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 If (frmDM.fibdsDepartments.Tag=1) then
  frmDM.fibdsDepartments.Close
 else
  frmDM.fibdsDepartments.Tag := Pred(frmDM.fibdsDepartments.Tag);
 If (frmDM.fibdsJobs.Tag=1) then
  frmDM.fibdsJobs.Close
 else
  frmDM.fibdsJobs.Tag := Pred(frmDM.fibdsJobs.Tag);
 If (frmDM.fibdsPersons.Tag=1) then
  frmDM.fibdsPersons.Close
 else
  frmDM.fibdsPersons.Tag := Pred(frmDM.fibdsPersons.Tag);
 inherited
end;

procedure TfrmJobPlacements.tlGroupsCustomDrawCell(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
 If (AViewInfo.Node.Values[tlGroupsWORKER_COUNT.ItemIndex]=0) then
  ACanvas.Font.Style := [fsItalic]
 else
  ACanvas.Font.Style := []
end;

procedure TfrmJobPlacements.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.ApplyUpdates;
   BkMrkDepartments := fibdsDepartments.Bookmark;
   BkMrkPersonIDMainList := fibdsMainListPERSON_ID.Value;
   BkMrkJobIDMainList := fibdsMainListJOB_ID.Value;
   fibdsDepartments.DisableScrollEvents;
   trMain.Commit;
   OpenAll;
   fibdsDepartments.EnableScrollEvents;
   SetACButtons(False)
  End
end;

procedure TfrmJobPlacements.fibdsDepartmentsBeforeScroll(DataSet: TDataSet);
begin
 If (sbApply.Enabled) then
  sbApply.Click
end;

procedure TfrmJobPlacements.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmJobPlacements.fibdsMainListAfterOpen(DataSet: TDataSet);
begin
 SetACButtons(False)
end;

procedure TfrmJobPlacements.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 inherited;
 If (Key=vk_F6) then
  If (tvMainListJOB_ID.Focused) then
   Begin
    If (frmMain.FindComponent('frmJobs')=nil) then
     frmJobs := TfrmJobs.Create(frmMain);
    frmJobs.Run(fibdsMainListJOB_ID.AsInteger)
   End
  else
   If (tvMainListPERSON_ID.Focused) then
    Begin
     If (frmMain.FindComponent('frmPersons')=nil) then
      frmPersons := TfrmPersons.Create(frmMain);
     frmPersons.Run(fibdsMainListPERSON_ID.AsInteger)
    End
   else
    If (tvMainListDEPARTMENT_ID.Focused) then
     Begin
      If (frmMain.FindComponent('frmDepartments')=nil) then
       frmDepartments := TfrmDepartments.Create(frmMain);
      frmDepartments.Run(fibdsMainListDEPARTMENT_ID.AsInteger)
     End
end;

procedure TfrmJobPlacements.fibdsDepartmentsCalcFields(DataSet: TDataSet);
begin
 fibdsDepartmentsNAME_WITH_COUNT.Value := fibdsDepartmentsNAME.AsString+' ('+fibdsDepartmentsWORKER_COUNT.AsString+')'
end;

procedure TfrmJobPlacements.fibdsMainListBeforeOpen(DataSet: TDataSet);
begin
 If (cxSplitter2.State=ssOpened) then
  fibdsMainList.ParamByName('WHERE').AsString := 'WHERE (JP.DEPARTMENT_ID=:ID)'
 else
  fibdsMainList.ParamByName('WHERE').AsString := ''
end;

procedure TfrmJobPlacements.cxSplitter2AfterClose(Sender: TObject);
begin
 fibdsMainList.FullRefresh;
 tvMainListDEPARTMENT_ID.Visible := (cxSplitter2.State=ssClosed)
end;

procedure TfrmJobPlacements.fibdsMainListNewRecord(DataSet: TDataSet);
begin
 If (cxSplitter2.State=ssOpened) then
  fibdsMainListDEPARTMENT_ID.Value := fibdsDepartmentsID.Value
end;

end.
