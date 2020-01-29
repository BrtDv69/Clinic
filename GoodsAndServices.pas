unit GoodsAndServices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, ExtCtrls, dxBar, cxSplitter,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls,
  cxInplaceContainer, cxTL, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridCustomPopupMenu, DB, FIBDataSet, pFIBDataSet,
  cxTLData, cxDBTL, cxGraphics, cxGridDBDataDefinitions, pFIBQuery;

type
  TfrmGoodsAndServices = class(TfrmLike)
    dxBarManager1: TdxBarManager;
    sbFirst: TdxBarButton;
    sbPrior: TdxBarButton;
    sbNext: TdxBarButton;
    sbLast: TdxBarButton;
    sbAdd: TdxBarButton;
    sbDelete: TdxBarButton;
    sbRefresh: TdxBarButton;
    sbApply: TdxBarButton;
    sbCancel: TdxBarButton;
    sbClose: TdxBarButton;
    sbFilter: TdxBarButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Label339: TLabel;
    dbmComments: TcxDBMemo;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    grdMainList: TcxGrid;
    tvMainList: TcxGridDBTableView;
    lvMainList: TcxGridLevel;
    fibdsMain: TpFIBDataSet;
    dsMain: TDataSource;
    fibdsMainID: TFIBIntegerField;
    fibdsMainITEM_TYPE: TFIBIntegerField;
    fibdsMainPARENT_ID: TFIBIntegerField;
    fibdsMainCHILD_COUNT: TFIBIntegerField;
    fibdsMainNAME: TFIBStringField;
    fibdsMainCOMMENTS: TFIBStringField;
    tlGroups: TcxDBTreeList;
    tlGroupsNAME: TcxDBTreeListColumn;
    tlGroupsID: TcxDBTreeListColumn;
    tlGroupsPARENT_ID: TcxDBTreeListColumn;
    fibdsMainNAME_WITH_CHIELD_COUNT: TFIBStringField;
    fibdsMainGoodsServices: TpFIBDataSet;
    dsMainGoodsServices: TDataSource;
    fibdsMainGoodsServicesID: TFIBIntegerField;
    fibdsMainGoodsServicesPARENT_ID: TFIBIntegerField;
    fibdsMainGoodsServicesNAME: TFIBStringField;
    fibdsMainGoodsServicesCOMMENTS: TFIBStringField;
    fibdsMainGoodsServicesITEM_TYPE: TFIBIntegerField;
    tvMainListITEM_TYPE: TcxGridDBColumn;
    tvMainListNAME: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    tlGroupsCHILD_COUNT: TcxDBTreeListColumn;
    fibdsSearch: TpFIBDataSet;
    dsSearch: TDataSource;
    fibdsSearchID: TFIBIntegerField;
    fibdsSearchITEM_TYPE: TFIBIntegerField;
    fibdsSearchNAME: TFIBStringField;
    fibdsSearchPARENT_ID: TFIBIntegerField;
    tvMainListID: TcxGridDBColumn;
    grdSearch: TcxGrid;
    tvSearch: TcxGridDBTableView;
    lvSearch: TcxGridLevel;
    cxSplitter3: TcxSplitter;
    tvSearchID: TcxGridDBColumn;
    tvSearchITEM_TYPE: TcxGridDBColumn;
    tvSearchNAME: TcxGridDBColumn;
    tvSearchPARENT_ID: TcxGridDBColumn;
    tvMainListPARENT_ID: TcxGridDBColumn;
    tlGroupsONLY_NAME: TcxDBTreeListColumn;
    procedure sbCloseClick(Sender: TObject);
    procedure fibdsMainAfterDelete(DataSet: TDataSet);
    procedure SetACButtons(Enabled : Boolean);
    procedure dsMainStateChange(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure fibdsMainAfterOpen(DataSet: TDataSet);
    procedure tlGroupsCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure fibdsMainCalcFields(DataSet: TDataSet);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbFilterClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure tvMainListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvMainListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvSearchFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxSplitter3AfterClose(Sender: TObject);
    procedure tlGroupsDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure tlGroupsDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tvMainListStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure tvMainListEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fibdsMainBeforeScroll(DataSet: TDataSet);
    procedure OpenAll; override;
  private
    { Private declarations }
   procedure DoSearch(ParentID,ID : Integer);
  public
    { Public declarations }
   procedure Run(ID : Integer);
   procedure Search(S : String);
  end;

var
  frmGoodsAndServices: TfrmGoodsAndServices;

implementation

uses DM, Misk;

{$R *.dfm}

var BkMrkIDMain: Integer = 0;
    BkMrkIDMainGoodsServices: Integer = 0;

procedure TfrmGoodsAndServices.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmGoodsAndServices.fibdsMainAfterDelete(DataSet: TDataSet);
begin
 SetACButtons(True)
end;

procedure TfrmGoodsAndServices.SetACButtons(Enabled : Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

procedure TfrmGoodsAndServices.dsMainStateChange(Sender: TObject);
 var I: Integer;
     Enabled: Boolean;
begin
 Enabled := False;
 For I := 0 to Pred(ComponentCount) do
  If (Components[I] is TpFIBDataSet) then
   If (Components[I].Name='fibdsMain') or (TpFIBDataSet(Components[I]).DataSource=dsMain) then
    Begin
     Enabled := Enabled or (TpFIBDataSet(Components[I]).State in [dsEdit,dsInsert]) or
                           (TpFIBDataSet(Components[I]).HasUncommitedChanges) or
                           (TpFIBDataSet(Components[I]).UpdatesPending);
     If (Enabled) then
      Break
    End;
 SetACButtons(Enabled)
end;

procedure TfrmGoodsAndServices.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMain.ApplyUpdates;
   fibdsMainGoodsServices.ApplyUpdates;
   BkMrkIDMain := fibdsMainID.Value;
   BkMrkIDMainGoodsServices := fibdsMainGoodsServicesID.Value;
   fibdsMain.DisableScrollEvents;
   trMain.Commit;
   OpenAll;
   fibdsMain.EnableScrollEvents;
   SetACButtons(False)
  End
end;

procedure TfrmGoodsAndServices.OpenAll;
begin
 inherited;
 If (fibdsMain.Active) then
  fibdsMain.ReopenLocate('ID')
 else
  Begin
   fibdsMain.FullRefresh;
   If (BkMrkIDMain<>0) then
    fibdsMain.Locate('ID',BkMrkIDMain,[])
  End;
 If (fibdsMainGoodsServices.Active) then
  fibdsMainGoodsServices.ReopenLocate('ID')
 else
  Begin
   fibdsMainGoodsServices.FullRefresh;
   If (BkMrkIDMainGoodsServices<>0) then
    fibdsMainGoodsServices.Locate('ID',BkMrkIDMainGoodsServices,[])
  End;
 tlGroups.FullExpand
end;

procedure TfrmGoodsAndServices.Run(ID : Integer);
 var ParentID: Integer;
     fibqLocalAux : TpFIBQuery;
begin
 OpenAll;
 If (ID<>0) then
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMain.Database;
   fibqLocalAux.Transaction := fibdsMain.Transaction;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('select PARENT_ID from GOODS_SERVICES where (ID='+IntToStr(ID)+')');
   fibqLocalAux.ExecQuery;
   ParentID := 0;
   If (fibqLocalAux.RecordCount>0) then
    ParentID := fibqLocalAux.Fields[0].AsInteger;
   fibqLocalAux.Close;
   fibqLocalAux.Free;
   DoSearch(ParentID,ID);
  End;
 Show
end;

procedure TfrmGoodsAndServices.FormCreate(Sender: TObject);
begin
 FName := 'Справочник услуг';
 inherited;
 cxSplitter1.CloseSplitter;
 cxSplitter3.CloseSplitter
end;

procedure TfrmGoodsAndServices.sbAddClick(Sender: TObject);
begin
 If (MessageDlg('Хотите добавить элемент дочерний '+fibdsMainNAME.AsString+'?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   grdMainList.SetFocus;
   tvMainList.DataController.Append
  End
end;

procedure TfrmGoodsAndServices.fibdsMainAfterOpen(DataSet: TDataSet);
begin
 If (fibdsMain.RecordCount=0) then
  Begin
   fibdsMain.Insert;
   fibdsMainNAME.Value := 'Корень';
   fibdsMainITEM_TYPE.Value := 0;
   fibdsMain.Post
  End
end;

procedure TfrmGoodsAndServices.tlGroupsCustomDrawCell(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
 If (VarAsType(AViewInfo.Node.Values[tlGroupsCHILD_COUNT.ItemIndex], varString)='0') then
  ACanvas.Font.Style := [fsItalic]
 else
  ACanvas.Font.Style := []
end;

procedure TfrmGoodsAndServices.fibdsMainCalcFields(DataSet: TDataSet);
begin
 fibdsMainNAME_WITH_CHIELD_COUNT.Value := fibdsMainNAME.AsString+' ('+fibdsMainCHILD_COUNT.AsString+')'
end;

procedure TfrmGoodsAndServices.sbDeleteClick(Sender: TObject);
begin
 If (MessageDlg('Хотите удалить запись? '+fibdsMainGoodsServicesNAME.AsString+'?',mtConfirmation,mbOKCancel,0)=mrOK) then
  tvMainList.DataController.DeleteFocused
end;

procedure TfrmGoodsAndServices.sbFirstClick(Sender: TObject);
begin
 tvMainList.DataController.GotoFirst
end;

procedure TfrmGoodsAndServices.sbPriorClick(Sender: TObject);
begin
 tvMainList.DataController.GotoPrev
end;

procedure TfrmGoodsAndServices.sbNextClick(Sender: TObject);
begin
 tvMainList.DataController.GotoNext
end;

procedure TfrmGoodsAndServices.sbLastClick(Sender: TObject);
begin
 tvMainList.DataController.GotoLast
end;

procedure TfrmGoodsAndServices.sbFilterClick(Sender: TObject);
 var S: string;
begin
 If (InputQuery('Поиск','Наименование содержит:', S)) then
  Search(S)
end;

procedure TfrmGoodsAndServices.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainGoodsServices.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmGoodsAndServices.tvMainListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(AviewInfo.Selected) then
  If (VarAsType(AViewInfo.GridRecord.Values[Sender.FindItemByName(Sender.Name+'ITEM_TYPE').Index],varInteger)=0) then
   ACanvas.Brush.Color := clrGroups
  else
   ACanvas.Brush.Color := clWindow
end;

procedure TfrmGoodsAndServices.Search(S : String);
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

procedure TfrmGoodsAndServices.DoSearch(ParentID,ID : Integer);
begin
 tlGroups.FullExpand;
 tlGroups.FocusedNode := tlGroups.FindNodeByKeyValue(ParentID,tlGroupsID,nil,False);
 tvMainList.Controller.EditingController.HideEdit(True);
 tvMainList.DataController.GotoFirst;
 tvMainList.DataController.Search.Locate(tvMainListID.Index, IntToStr(ID));
 tvMainList.DataController.Search.Cancel
end;

procedure TfrmGoodsAndServices.tvMainListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 sbFirst.Enabled := NOT tvMainList.DataController.IsBOF;
 sbLast.Enabled := NOT tvMainList.DataController.IsEOF;
 sbPrior.Enabled := sbFirst.Enabled;
 sbNext.Enabled := sbLast.Enabled
end;

procedure TfrmGoodsAndServices.tvSearchFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 DoSearch(fibdsSearchPARENT_ID.AsInteger,fibdsSearchID.AsInteger)
end;

procedure TfrmGoodsAndServices.cxSplitter3AfterClose(Sender: TObject);
begin
 cxSplitter3.Visible := False;
 fibdsSearch.Close;
end;

procedure TfrmGoodsAndServices.tlGroupsDragOver(Sender, Source: TObject; X,
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

procedure TfrmGoodsAndServices.tlGroupsDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var AGridView: TcxCustomGridView;
    S: string;
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
 If (tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListID.Index]=0) then
  S := 'группу'
 else
  S := 'услугу';
 If (MessageDlg('Хотите переместить '+S+' ['+tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListNAME.Index]+'] в группу ['+tlGroups.FocusedNode.Values[tlGroupsONLY_NAME.ItemIndex]+']',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMain.Database;
   fibqLocalAux.Transaction := fibdsMain.Transaction;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('update GOODS_SERVICES set PARENT_ID='+VarAsType(tlGroups.FocusedNode.Values[tlGroupsID.ItemIndex],varString)+' where (ID='+VarAsType(AGridView.DataController.Values[AGridView.DataController.FocusedRecordIndex,tvMainListID.Index],varString)+')');
   fibqLocalAux.ExecQuery;
   trMain.CommitRetaining;
   fibqLocalAux.Close;
   fibqLocalAux.Free;
   fibdsMain.DisableControls;
   fibdsMain.FullRefresh;
   fibdsMain.EnableControls;
   SetFocus
  End
end;

procedure TfrmGoodsAndServices.tvMainListStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
 If (sbApply.Enabled) then
  Begin
   sbApply.Click;
   Exit
  End; 
 fibdsMainGoodsServices.DisableControls
end;

procedure TfrmGoodsAndServices.tvMainListEndDrag(Sender, Target: TObject;
  X, Y: Integer);
begin
 fibdsMainGoodsServices.EnableControls
end;

procedure TfrmGoodsAndServices.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Shift=[ssCtrl]) and (Key in [Ord('F'),Ord('f'),Ord('А'),Ord('а')]) then
  sbFilter.Click
end;

procedure TfrmGoodsAndServices.fibdsMainBeforeScroll(DataSet: TDataSet);
begin
 If (sbApply.Enabled) then
  sbApply.Click
end;

end.
