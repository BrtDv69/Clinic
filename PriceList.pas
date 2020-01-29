unit PriceList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeList, cxGridCustomPopupMenu, cxGridPopupMenu, DB, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, cxInplaceContainer,
  cxTL, cxDBTL, cxTLData, cxGraphics, cxCalendar, pFIBQuery, frxClass;

type
  TfrmPriceList = class(TfrmLikeList)
    tlGroups: TcxDBTreeList;
    tlGroupsNAME: TcxDBTreeListColumn;
    tlGroupsID: TcxDBTreeListColumn;
    tlGroupsPARENT_ID: TcxDBTreeListColumn;
    tlGroupsCHILD_COUNT: TcxDBTreeListColumn;
    cxSplitter2: TcxSplitter;
    fibdsGoodsServices: TpFIBDataSet;
    fibdsGoodsServicesID: TFIBIntegerField;
    fibdsGoodsServicesPARENT_ID: TFIBIntegerField;
    fibdsGoodsServicesCHILD_COUNT: TFIBIntegerField;
    fibdsGoodsServicesNAME: TFIBStringField;
    dsGoodsServices: TDataSource;
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListGOOD_SERVICE_ID: TFIBIntegerField;
    fibdsMainListDEPARTMENT_ID: TFIBIntegerField;
    fibdsMainListSTART_DATE: TFIBDateField;
    fibdsMainListPRICE: TFIBFloatField;
    fibdsMainListCOMMENTS: TFIBStringField;
    fibdsGoodsServicesITEM_TYPE: TFIBIntegerField;
    tvMainListDEPARTMENT_ID: TcxGridDBColumn;
    tvMainListSTART_DATE: TcxGridDBColumn;
    tvMainListPRICE: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    cxSplitter3: TcxSplitter;
    grdSearch: TcxGrid;
    tvSearch: TcxGridDBTableView;
    tvSearchID: TcxGridDBColumn;
    tvSearchITEM_TYPE: TcxGridDBColumn;
    tvSearchNAME: TcxGridDBColumn;
    lvSearch: TcxGridLevel;
    fibdsSearch: TpFIBDataSet;
    fibdsSearchID: TFIBIntegerField;
    fibdsSearchITEM_TYPE: TFIBIntegerField;
    fibdsSearchNAME: TFIBStringField;
    dsSearch: TDataSource;
    tlGroupsITEM_TYPE: TcxDBTreeListColumn;
    fibdsMainListCAN_EDIT_PRICE: TFIBIntegerField;
    tvMainListCAN_EDIT_PRICE: TcxGridDBColumn;
    sbPrint: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tlGroupsCustomDrawCell(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
    procedure sbFilterClick(Sender: TObject);
    procedure tvSearchCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvSearchFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure sbApplyClick(Sender: TObject);
    procedure cxSplitter3AfterClose(Sender: TObject);
    procedure fibdsGoodsServicesBeforeScroll(DataSet: TDataSet);
    procedure sbCancelClick(Sender: TObject);
    procedure fibdsMainListAfterOpen(DataSet: TDataSet);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fibdsMainListBeforeInsert(DataSet: TDataSet);
    procedure fibdsMainListBeforeOpen(DataSet: TDataSet);
    procedure fibdsMainListNewRecord(DataSet: TDataSet);
    procedure tvMainListCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tvMainListEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure tvMainListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tvMainListSTART_DATEPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure fibdsMainListBeforeDelete(DataSet: TDataSet);
    procedure OpenAll; override;
    procedure Run(ID : Integer); override;
    procedure sbPrintClick(Sender: TObject);
  private
    { Private declarations }
   CurDate: Tdate;
   procedure DoSearch(ID : Integer);
   procedure GetValue(const VarName: String; var Value: Variant);
  public
    { Public declarations }
   procedure Search(S : String);
  end;

var
  frmPriceList: TfrmPriceList;

implementation

uses DM, GoodsAndServices, Main, Departments, Misk;

{$R *.dfm}

var DepartmentID: Integer = 0;
    DMTagIncreased: Boolean = False; 
    BkMrkGoodsServices: String = '';
    BkMrkIDMainList: Integer = 0;

procedure TfrmPriceList.FormCreate(Sender: TObject);
begin
 FName := 'Прайс-лист';
 inherited;
 cxSplitter3.CloseSplitter
end;

procedure TfrmPriceList.Run(ID : Integer);
begin
 OpenAll;
 If (ID<>0) then
  DoSearch(ID);
 Show
end;

procedure TfrmPriceList.OpenAll;
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
 If (fibdsGoodsServices.Active) then
  fibdsGoodsServices.ReopenLocate('ID')
 else
  Begin
   fibdsGoodsServices.FullRefresh;
   If (BkMrkGoodsServices<>'') then
    fibdsGoodsServices.Bookmark := BkMrkGoodsServices
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

procedure TfrmPriceList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 If (frmDM.fibdsDepartments.Tag=1) then
  frmDM.fibdsDepartments.Close
 else
  frmDM.fibdsDepartments.Tag := Pred(frmDM.fibdsDepartments.Tag);
 inherited
end;

procedure TfrmPriceList.tlGroupsCustomDrawCell(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
 If (AViewInfo.Node.Values[tlGroupsITEM_TYPE.ItemIndex]=0) then
  ACanvas.Font.Color := clWindowText
 else
  ACanvas.Font.Color := clrServices
end;

procedure TfrmPriceList.sbFilterClick(Sender: TObject);
var S: string;
begin
 If (InputQuery('Поиск','Наименование содержит:', S)) then
  Search(S)
end;

procedure TfrmPriceList.Search(S : String);
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

procedure TfrmPriceList.DoSearch(ID : Integer);
begin
 tlGroups.FullExpand;
 tlGroups.FocusedNode := tlGroups.FindNodeByKeyValue(ID,tlGroupsID,nil,False)
end;

procedure TfrmPriceList.tvSearchCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(AviewInfo.Selected) then
  If (VarAsType(AViewInfo.GridRecord.Values[Sender.FindItemByName(Sender.Name+'ITEM_TYPE').Index],varInteger)=0) then
   ACanvas.Brush.Color := clrGroups
  else
   ACanvas.Brush.Color := clWindow
end;

procedure TfrmPriceList.tvSearchFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 DoSearch(fibdsSearchID.AsInteger)
end;

procedure TfrmPriceList.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.ApplyUpdates;
   BkMrkGoodsServices := fibdsGoodsServices.Bookmark;
   BkMrkIDMainList := fibdsMainListID.Value;
   fibdsGoodsServices.DisableScrollEvents;
   trMain.Commit;
   OpenAll;
   fibdsGoodsServices.EnableScrollEvents;
   SetACButtons(False)
  End
end;

procedure TfrmPriceList.cxSplitter3AfterClose(Sender: TObject);
begin
 cxSplitter3.Visible := False;
 fibdsSearch.Close
end;

procedure TfrmPriceList.fibdsGoodsServicesBeforeScroll(DataSet: TDataSet);
begin
 If (sbApply.Enabled) then
  sbApply.Click
end;

procedure TfrmPriceList.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmPriceList.fibdsMainListAfterOpen(DataSet: TDataSet);
begin
 If (fibdsGoodsServicesITEM_TYPE.AsInteger=1) then
  fibdsMainList.AllowedUpdateKinds := [ukModify, ukInsert, ukDelete]
 else
  fibdsMainList.AllowedUpdateKinds := [];
 SetACButtons(False)
end;

procedure TfrmPriceList.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 inherited;
 If (Key=vk_F6) then
  If (tlGroups.Focused) then
   Begin
    If (frmMain.FindComponent('frmGoodsAndServices')=nil) then
     frmGoodsAndServices := TfrmGoodsAndServices.Create(frmMain);
    frmGoodsAndServices.Run(tlGroups.FocusedNode.Values[tlGroupsID.ItemIndex])
   End
  else
   If (tvMainList.Focused) then
    Begin
     If (frmMain.FindComponent('frmDepartments')=nil) then
      frmDepartments := TfrmDepartments.Create(frmMain);
     frmDepartments.Run(fibdsMainListDEPARTMENT_ID.AsInteger)
    End
end;

procedure TfrmPriceList.fibdsMainListBeforeInsert(DataSet: TDataSet);
begin
 DataSet.DisableControls;
 DataSet.First;
 DepartmentID := fibdsMainListDEPARTMENT_ID.AsInteger;
 DataSet.EnableControls
end;

procedure TfrmPriceList.fibdsMainListBeforeOpen(DataSet: TDataSet);
 var fibqLocalAux : TpFIBQuery;
begin
 fibqLocalAux := TpFIBQuery.Create(Nil);
 fibqLocalAux.Database := fibdsMainList.Database;
 fibqLocalAux.Transaction := fibdsMainList.Transaction;
 fibqLocalAux.SQL.Clear;
 fibqLocalAux.SQL.Add('select current_date from rdb$database');
 fibqLocalAux.ExecQuery;
 CurDate := fibqLocalAux.Fields[0].AsDate;
 fibqLocalAux.Close;
 fibqLocalAux.Free
end;

procedure TfrmPriceList.fibdsMainListNewRecord(DataSet: TDataSet);
begin
 If (DepartmentID<>0) then
  fibdsMainListDEPARTMENT_ID.Value := DepartmentID;
 fibdsMainListSTART_DATE.Value := CurDate+1
end;

procedure TfrmPriceList.tvMainListCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(AviewInfo.Selected) then
  If (AViewInfo.GridRecord.Values[tvMainListSTART_DATE.Index]>CurDate) then
   ACanvas.Brush.Color := clWindow
  else
   ACanvas.Brush.Color := clrReadOnly
end;

procedure TfrmPriceList.tvMainListEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
 AAllow := (tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListSTART_DATE.Index]>CurDate)
end;

procedure TfrmPriceList.tvMainListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 inherited;
 sbDelete.Enabled := (tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListSTART_DATE.Index]>CurDate)
end;

procedure TfrmPriceList.tvMainListSTART_DATEPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
 ErrorText := 'Начало действия цены не может быть ранее следующего дня.';
 Error := Not(VarAsType(DisplayValue,varDate)>CurDate)
end;

procedure TfrmPriceList.fibdsMainListBeforeDelete(DataSet: TDataSet);
begin
 If Not(tvMainList.DataController.Values[tvMainList.DataController.FocusedRecordIndex,tvMainListSTART_DATE.Index]>CurDate) then
  Begin
   MessageDlg('Нельзя удалять вступившие в силу позиции прайс-листа',mtError,[mbOk],0);
   Abort
  End
end;

procedure TfrmPriceList.sbPrintClick(Sender: TObject);
begin
 frmDM.frxReport.DataSet := nil;
 frmDM.frxReport.DataSetName := '';
 frmDM.frxReport.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbPageSetup,pbTools,pbNavigator];
 frmDM.frxReport.OnGetValue := GetValue;
 PrintClick(Sender)
end;

procedure TfrmPriceList.GetValue(const VarName: String;
  var Value: Variant);
begin
 If (VarName='Наименование организации') then
  Value := Institution.Name
end;

end.
