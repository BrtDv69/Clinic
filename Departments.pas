unit Departments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeList, cxGridCustomPopupMenu, cxGridPopupMenu, DB, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView, cxFilter,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxInplaceContainer,
  cxTL, cxDBTL, cxTLData, cxGraphics, cxCalendar, pFIBQuery;

type
  TfrmDepartments = class(TfrmLikeList)
    tlGroups: TcxDBTreeList;
    tlGroupsNAME: TcxDBTreeListColumn;
    tlGroupsID: TcxDBTreeListColumn;
    tlGroupsPARENT_ID: TcxDBTreeListColumn;
    cxSplitter2: TcxSplitter;
    fibdsDepartments: TpFIBDataSet;
    fibdsDepartmentsID: TFIBIntegerField;
    fibdsDepartmentsPARENT_ID: TFIBIntegerField;
    fibdsDepartmentsNAME: TFIBStringField;
    fibdsDepartmentsITEM_TYPE: TFIBIntegerField;
    cxSplitter3: TcxSplitter;
    grdSearch: TcxGrid;
    tvSearch: TcxGridDBTableView;
    tvSearchID: TcxGridDBColumn;
    tvSearchNAME: TcxGridDBColumn;
    tvSearchPARENT_ID: TcxGridDBColumn;
    lvSearch: TcxGridLevel;
    fibdsSearch: TpFIBDataSet;
    fibdsSearchID: TFIBIntegerField;
    fibdsSearchNAME: TFIBStringField;
    dsSearch: TDataSource;
    tlGroupsVALID: TcxDBTreeListColumn;
    fibdsDepartmentsCHILD_COUNT: TFIBIntegerField;
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListPARENT_ID: TFIBIntegerField;
    fibdsMainListNAME: TFIBStringField;
    fibdsMainListITEM_TYPE: TFIBIntegerField;
    fibdsMainListCHIEF_ID: TFIBIntegerField;
    fibdsMainListVALID: TFIBIntegerField;
    fibdsMainListCOMMENTS: TFIBStringField;
    fibdsDepartmentsNAME_WITH_CHIELD_COUNT: TStringField;
    fibdsDepartmentsVALID: TFIBIntegerField;
    tlGroupsONLY_NAME: TcxDBTreeListColumn;
    fibdsMainListCHIEF_JOB_ID: TFIBIntegerField;
    tvMainListID: TcxGridDBColumn;
    tvMainListPARENT_ID: TcxGridDBColumn;
    tvMainListNAME: TcxGridDBColumn;
    tvMainListITEM_TYPE: TcxGridDBColumn;
    tvMainListCHIEF_JOB_ID: TcxGridDBColumn;
    tvMainListCHIEF_ID: TcxGridDBColumn;
    tvMainListVALID: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    fibdsItemTypes: TpFIBDataSet;
    fibdsItemTypesID: TFIBIntegerField;
    fibdsItemTypesNAME: TFIBStringField;
    dsItemTypes: TDataSource;
    fibdsSearchPARENT_ID: TFIBIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlGroupsCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure sbFilterClick(Sender: TObject);
    procedure tvSearchFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure sbApplyClick(Sender: TObject);
    procedure cxSplitter3AfterClose(Sender: TObject);
    procedure fibdsDepartmentsBeforeScroll(DataSet: TDataSet);
    procedure sbCancelClick(Sender: TObject);
    procedure fibdsMainListAfterOpen(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvMainListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure OpenAll; override;
    procedure Run(ID : Integer); override;
    procedure fibdsMainListCHIEF_IDValidate(Sender: TField);
    procedure sbAddClick(Sender: TObject);
    procedure fibdsDepartmentsAfterOpen(DataSet: TDataSet);
    procedure fibdsDepartmentsCalcFields(DataSet: TDataSet);
    procedure tlGroupsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tlGroupsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvMainListStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure tvMainListEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure fibdsMainListBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
   procedure DoSearch(ParentID,ID : Integer);
  public
    { Public declarations }
   procedure Search(S : String);
  end;

var
  frmDepartments: TfrmDepartments;

implementation

uses DM, Main, Jobs, Persons, Misk;

{$R *.dfm}

var BkMrkIDDepartments: Integer = 0;
    BkMrkIDMainList: Integer = 0;
    DMTagIncreased: Boolean = False;

procedure TfrmDepartments.FormCreate(Sender: TObject);
begin
 FName := 'Структурные подразделения';
 inherited;
 cxSplitter3.CloseSplitter;
 With frmDM.tvValidPersons.DataController.Filter do
  Begin
   Active := False;
   Clear;
   AddItem(Nil,frmDM.tvValidPersonsVALID,foEqual,1,'Работают');
   Active := True
  End;    // with
end;

procedure TfrmDepartments.Run(ID : Integer);
 var ParentID: Integer;
     fibqLocalAux : TpFIBQuery;
begin
 OpenAll;
 If (ID<>0) then
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMainList.Database;
   fibqLocalAux.Transaction := fibdsMainList.Transaction;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('select PARENT_ID from DEPARTMENTS where (ID='+IntToStr(ID)+')');
   fibqLocalAux.ExecQuery;
   ParentID := 0;
   If (fibqLocalAux.RecordCount>0) then
    ParentID := fibqLocalAux.Fields[0].AsInteger;
   fibqLocalAux.Close;
   fibqLocalAux.Free;
   DoSearch(ParentID,ID);
  End
 else
  tlGroups.GotoBOF;
 Show
end;

procedure TfrmDepartments.OpenAll;
begin
 inherited;
 If Not(frmDM.trMain.InTransaction) then
  frmDM.trMain.StartTransaction;
 frmDM.fibdsPersons.Open;
 frmDM.fibdsJobs.Open;
 If Not(DMTagIncreased) then
  Begin
   DMTagIncreased := True;
   frmDM.fibdsPersons.Tag := Succ(frmDM.fibdsPersons.Tag);
   frmDM.fibdsJobs.Tag := Succ(frmDM.fibdsJobs.Tag)
  End; 
 fibdsItemTypes.Open;
 If (fibdsDepartments.Active) then
  fibdsDepartments.ReopenLocate('ID')
 else
  Begin
   fibdsDepartments.FullRefresh;
   If (BkMrkIDDepartments<>0) then
    fibdsDepartments.Locate('ID',BkMrkIDDepartments,[])
  End;
 If (fibdsMainList.Active) then
  fibdsMainList.ReopenLocate('ID')
 else
  Begin
   fibdsMainList.FullRefresh;
   If (BkMrkIDMainList<>0) then
    fibdsMainList.Locate('ID',BkMrkIDMainList,[])
  End;
 tlGroups.FullExpand
end;

procedure TfrmDepartments.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 If (frmDM.fibdsPersons.Tag=1) then
  frmDM.fibdsPersons.Close
 else
  frmDM.fibdsPersons.Tag := Pred(frmDM.fibdsPersons.Tag);
 If (frmDM.fibdsJobs.Tag=1) then
  frmDM.fibdsJobs.Close
 else
  frmDM.fibdsJobs.Tag := Pred(frmDM.fibdsJobs.Tag);
 inherited
end;

procedure TfrmDepartments.tlGroupsCustomDrawCell(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
 If Not(AViewInfo.Selected) then
  If (AViewInfo.Node.Values[tlGroupsVALID.ItemIndex]=0) then
   ACanvas.Font.Style := [fsItalic]
  else
   ACanvas.Font.Style := []
end;

procedure TfrmDepartments.sbFilterClick(Sender: TObject);
var S: string;
begin
 If (InputQuery('Поиск','Наименование содержит:', S)) then
  Search(S)
end;

procedure TfrmDepartments.Search(S : String);
begin
 fibdsSearch.Close;
 fibdsSearch.ParamByName('NAME').AsString := '%'+AnsiUpperCase(S)+'%';
 fibdsSearch.Open;
 If (fibdsSearch.RecordCount=0) then
  MessageDlg('Записей, удовлетворяющих условию не найдено.', mtInformation, [mbOK], 0)
 else
  If (fibdsSearch.RecordCount>1) then
   Begin
    cxSplitter3.Visible := True;
    cxSplitter3.OpenSplitter;
    grdSearch.SetFocus
   End
end;

procedure TfrmDepartments.DoSearch(ParentID,ID : Integer);
begin
 tlGroups.FullExpand;
 tlGroups.FocusedNode := tlGroups.FindNodeByKeyValue(ParentID,tlGroupsID,nil,False);
 tvMainList.Controller.EditingController.HideEdit(True);
 tvMainList.DataController.GotoFirst;
 tvMainList.DataController.Search.Locate(tvMainListID.Index, IntToStr(ID));
 tvMainList.DataController.Search.Cancel
end;

procedure TfrmDepartments.tvSearchFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 DoSearch(fibdsSearchPARENT_ID.AsInteger, fibdsSearchID.AsInteger)
end;

procedure TfrmDepartments.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsDepartments.DisableScrollEvents;
   fibdsDepartments.ApplyUpdates;
   fibdsMainList.ApplyUpdates;
   BkMrkIDMainList := fibdsMainListID.Value;
   BkMrkIDDepartments := fibdsDepartmentsID.Value;
   trMain.Commit;
   OpenAll;
   fibdsDepartments.EnableScrollEvents;
   SetACButtons(False)
  End
end;

procedure TfrmDepartments.cxSplitter3AfterClose(Sender: TObject);
begin
 cxSplitter3.Visible := False;
 fibdsSearch.Close
end;

procedure TfrmDepartments.fibdsDepartmentsBeforeScroll(DataSet: TDataSet);
begin
 If (sbApply.Enabled) then
  sbApply.Click
end;

procedure TfrmDepartments.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmDepartments.fibdsMainListAfterOpen(DataSet: TDataSet);
begin
 SetACButtons(False)
end;

procedure TfrmDepartments.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 inherited;
 If (Key=vk_F6) then
  If (tvMainListCHIEF_JOB_ID.Focused) then
   Begin
    If (frmMain.FindComponent('frmJobs')=nil) then
     frmJobs := TfrmJobs.Create(frmMain);
    frmJobs.Run(fibdsMainListCHIEF_JOB_ID.AsInteger)
   End
  else
   If (tvMainListCHIEF_ID.Focused) then
    Begin
     If (frmMain.FindComponent('frmPersons')=nil) then
      frmPersons := TfrmPersons.Create(frmMain);
     frmPersons.Run(fibdsMainListCHIEF_ID.AsInteger)
    End
end;

procedure TfrmDepartments.tvMainListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(AviewInfo.Selected) then
  If (AViewInfo.GridRecord.Values[tvMainListVALID.Index]=0) then
   Begin
    ACanvas.Brush.Color := clrNotValid;
    ACanvas.Font.Style := [fsItalic]
   End
   else
    Begin
     ACanvas.Brush.Color := clWindow;
     ACanvas.Font.Style := []
    End
end;

procedure TfrmDepartments.fibdsMainListCHIEF_IDValidate(Sender: TField);
begin
 If (frmDM.fibdsPersons.Lookup('ID',fibdsMainListCHIEF_ID.Value,'VALID')=0) then
  Begin
   MessageDlg('Этот сотрудник не работает.',mtError,[mbOK],0);
   Abort
  End
end;

procedure TfrmDepartments.sbAddClick(Sender: TObject);
begin
 If (MessageDlg('Хотите добавить элемент дочерний '+fibdsDepartmentsNAME.AsString+'?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   grdMainList.SetFocus;
   tvMainList.DataController.Append
  End
end;

procedure TfrmDepartments.fibdsDepartmentsAfterOpen(DataSet: TDataSet);
begin
 If (fibdsDepartments.RecordCount=0) then
  Begin
   fibdsDepartments.Insert;
   fibdsDepartmentsNAME.Value := 'Наименование медицинского учреждения';
   fibdsDepartmentsITEM_TYPE.Value := 0;
   fibdsDepartments.Post
  End
end;

procedure TfrmDepartments.fibdsDepartmentsCalcFields(DataSet: TDataSet);
begin
 fibdsDepartmentsNAME_WITH_CHIELD_COUNT.Value := fibdsDepartmentsNAME.AsString+' ('+fibdsDepartmentsCHILD_COUNT.AsString+')'
end;

procedure TfrmDepartments.tlGroupsDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
 var Node : TcxTreeListNode;
begin
 With TcxGridSite(TDragControlObject(Source).Control) do
  Accept := (GridView=tvMainList) and
            (tlGroups.FocusedNode.Values[tlGroupsID.ItemIndex]<>tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListPARENT_ID.Index]) and
            (tlGroups.FocusedNode.Values[tlGroupsID.ItemIndex]<>tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListID.Index]);
 If (Accept) then
  Begin
   Node := tlGroups.FocusedNode;
   While (Node.Parent<>nil) do
    Begin
     If (Node.Parent.Values[tlGroupsID.ItemIndex]=tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListID.Index]) then
      Begin
       Accept := False;
       Break
      End;
     Node := Node.Parent
    End
  End
end;

procedure TfrmDepartments.tlGroupsDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var AGridView: TcxCustomGridView;
    fibqLocalAux : TpFIBQuery;

 function GetDragSourceGridView(Source: TObject): TcxCustomGridView;
 begin
  If (TDragControlObject(Source).Control is TcxGridSite) then
   Result := TcxGridSite(TDragControlObject(Source).Control).GridView
  else
   Result := nil
 end;

begin
 AGridView := GetDragSourceGridView(Source);
 If (AGridView = nil) then
  Exit;
 If (MessageDlg('Хотите переместить подразделение ['+tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListNAME.Index]+'] в подразделение ['+tlGroups.FocusedNode.Values[tlGroupsONLY_NAME.ItemIndex]+']',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMainList.Database;
   fibqLocalAux.Transaction := fibdsMainList.Transaction;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('update DEPARTMENTS set PARENT_ID='+VarAsType(tlGroups.FocusedNode.Values[tlGroupsID.ItemIndex],varString)+' where (ID='+VarAsType(AGridView.DataController.Values[AGridView.DataController.FocusedRecordIndex,tvMainListID.Index],varString)+')');
   fibqLocalAux.ExecQuery;
   trMain.CommitRetaining;
   fibdsDepartments.DisableControls;
   fibdsDepartments.FullRefresh;
   fibdsDepartments.EnableControls;
   fibqLocalAux.Close;
   fibqLocalAux.Free;
   SetFocus
  End
end;

procedure TfrmDepartments.tvMainListStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
 If (sbApply.Enabled) then
  Begin
   sbApply.Click;
   Exit
  End; 
 fibdsMainList.DisableControls
end;

procedure TfrmDepartments.tvMainListEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
 fibdsMainList.EnableControls
end;

procedure TfrmDepartments.fibdsMainListBeforeOpen(DataSet: TDataSet);
begin
 If (fibdsDepartmentsPARENT_ID.IsNull) then
  fibdsMainList.ParamByName('WHERE').AsString := 'or (D.PARENT_ID is null)'
 else
  fibdsMainList.ParamByName('WHERE').AsString := ''
end;

end.
