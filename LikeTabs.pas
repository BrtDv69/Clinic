unit LikeTabs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, cxControls, cxPC, DB,
  FIBDataSet, pFIBDataSet, dxBar, Buttons, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxSplitter, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls,
  Menus;

type
  TfrmLikeTabs = class(TfrmLike)
    cxPageControl1: TcxPageControl;
    tsList: TcxTabSheet;
    tsDetail: TcxTabSheet;
    fibdsMainList: TpFIBDataSet;
    dxBarManager: TdxBarManager;
    sbFirstList: TdxBarButton;
    sbPriorList: TdxBarButton;
    sbNextList: TdxBarButton;
    sbLastList: TdxBarButton;
    sbAddList: TdxBarButton;
    sbDeleteList: TdxBarButton;
    sbRefreshList: TdxBarButton;
    sbApplyList: TdxBarButton;
    sbCancelList: TdxBarButton;
    sbCloseList: TdxBarButton;
    sbFilterList: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    sbAdd: TdxBarButton;
    sbDelete: TdxBarButton;
    sbRefresh: TdxBarButton;
    sbApply: TdxBarButton;
    sbCancel: TdxBarButton;
    sbPrint: TdxBarButton;
    sbClose: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    fibdsMain: TpFIBDataSet;
    grdMainList: TcxGrid;
    tvMainList: TcxGridDBTableView;
    lvMainList: TcxGridLevel;
    dxBarDockControl3: TdxBarDockControl;
    dxBarDockControl4: TdxBarDockControl;
    dsMainList: TDataSource;
    dsMain: TDataSource;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel4: TPanel;
    Panel1: TPanel;
    Label339: TLabel;
    dbmComments: TcxDBMemo;
    cxSplitter1: TcxSplitter;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    procedure sbFirstListClick(Sender: TObject);
    procedure sbPriorListClick(Sender: TObject);
    procedure sbNextListClick(Sender: TObject);
    procedure sbLastListClick(Sender: TObject);
    procedure sbDeleteListClick(Sender: TObject);
    procedure sbCloseListClick(Sender: TObject);
    procedure SetACListButtons(Enabled : Boolean);
    procedure SetACButtons(Enabled : Boolean);
    procedure dsMainListStateChange(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure fibdsMainListAfterDelete(DataSet: TDataSet);
    procedure fibdsMainAfterDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure sbFilterListClick(Sender: TObject);
    procedure tvMainListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxPageControl1PageChanging(Sender: TObject;
      NewPage: TcxTabSheet; var AllowChange: Boolean); dynamic;
    procedure sbAddListClick(Sender: TObject); dynamic;
    procedure Run(ID : Integer); dynamic;
    procedure sbRefreshClick(Sender: TObject);
    procedure sbRefreshListClick(Sender: TObject);
    procedure fibdsMainAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLikeTabs: TfrmLikeTabs;

implementation

uses DM, Orders;

{$R *.dfm}

procedure TfrmLikeTabs.sbFirstListClick(Sender: TObject);
begin
 tvMainList.DataController.GotoFirst
end;

procedure TfrmLikeTabs.sbPriorListClick(Sender: TObject);
begin
 tvMainList.DataController.GotoPrev
end;

procedure TfrmLikeTabs.sbNextListClick(Sender: TObject);
begin
 tvMainList.DataController.GotoNext
end;

procedure TfrmLikeTabs.sbLastListClick(Sender: TObject);
begin
 tvMainList.DataController.GotoLast
end;

procedure TfrmLikeTabs.sbDeleteListClick(Sender: TObject);
begin
 If (MessageDlg('Хотите удалить текущую запись?',mtConfirmation,mbOKCancel,0)=mrOK) then
  tvMainList.DataController.DeleteFocused
end;

procedure TfrmLikeTabs.sbCloseListClick(Sender: TObject);
begin
 Close
end;

procedure TfrmLikeTabs.SetACListButtons(Enabled : Boolean);
begin
 sbApplyList.Enabled := Enabled;
 sbCancelList.Enabled := Enabled;
 tsDetail.Enabled := Not Enabled
end;

procedure TfrmLikeTabs.SetACButtons(Enabled : Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled;
 sbPrint.Enabled := Not Enabled;
 tsList.Enabled := Not Enabled
end;

procedure TfrmLikeTabs.dsMainListStateChange(Sender: TObject);
begin
 SetACListButtons((fibdsMainList.State in [dsEdit,dsInsert]) or (fibdsMainList.UpdatesPending))
end;

procedure TfrmLikeTabs.dsMainStateChange(Sender: TObject);
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

procedure TfrmLikeTabs.fibdsMainListAfterDelete(DataSet: TDataSet);
begin
 SetACListButtons(True)
end;

procedure TfrmLikeTabs.fibdsMainAfterDelete(DataSet: TDataSet);
begin
 SetACButtons(True)
end;

procedure TfrmLikeTabs.FormCreate(Sender: TObject);
begin
 inherited;
 cxSplitter1.CloseSplitter
end;

procedure TfrmLikeTabs.sbFilterListClick(Sender: TObject);
begin
 tvMainList.Filtering.RunCustomizeDialog(nil)
end;

procedure TfrmLikeTabs.tvMainListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 sbFirstList.Enabled := NOT tvMainList.DataController.IsBOF;
 sbLastList.Enabled := NOT tvMainList.DataController.IsEOF;
 sbPriorList.Enabled := sbFirstList.Enabled;
 sbNextList.Enabled := sbLastList.Enabled
end;

procedure TfrmLikeTabs.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
 If (TForm((Sender as TcxPageControl).Owner).Visible) then
  Begin
   If (NewPage=tsDetail) then
    If (fibdsMainList.RecordCount>0) then
     Run(fibdsMainList.FieldByName('ID').AsInteger)
    else
     Run(-1)
   else
    Run(0)
  End
end;

procedure TfrmLikeTabs.Run(ID : Integer);
begin
 cxPageControl1.OnPageChanging := nil;
 If (ID=0) then
  cxPageControl1.ActivePage := tsList
 else
  Begin
   cxPageControl1.ActivePage := tsDetail;
   fibdsMain.ParamByName('ID').Value := ID
  End;
 cxPageControl1.OnPageChanging := cxPageControl1PageChanging;
 OpenAll;
 Show
end;

procedure TfrmLikeTabs.sbAddListClick(Sender: TObject);
begin
 Run(-1);
 dbmComments.DataBinding.DataSource := dsMain;
 sbAdd.Click
end;

procedure TfrmLikeTabs.sbRefreshClick(Sender: TObject);
begin
 If (MessageDlg('Хотите полностью обновить информацию?',mtConfirmation,mbOKCancel,0)=mrOK) then
  OpenAll
end;

procedure TfrmLikeTabs.sbRefreshListClick(Sender: TObject);
begin
 If (MessageDlg('Хотите полностью обновить информацию?',mtConfirmation,mbOKCancel,0)=mrOK) then
  OpenAll
end;

procedure TfrmLikeTabs.fibdsMainAfterInsert(DataSet: TDataSet);
begin
 fibdsMain.ParamByName('ID').Value := fibdsMain.FieldByName('ID').AsInteger
end;

end.
