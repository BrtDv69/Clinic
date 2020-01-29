unit LikeList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, DB, FIBDataSet, pFIBDataSet, dxBar, FIBDatabase,
  pFIBDatabase, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls;

type
  TfrmLikeList = class(TfrmLike)
    fibdsMainList: TpFIBDataSet;
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
    dsMainList: TDataSource;
    Panel2: TPanel;
    grdMainList: TcxGrid;
    tvMainList: TcxGridDBTableView;
    lvMainList: TcxGridLevel;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Panel1: TPanel;
    Label339: TLabel;
    dbmComments: TcxDBMemo;
    cxSplitter1: TcxSplitter;
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbCloseClick(Sender: TObject);
    procedure tvMainListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure sbFilterClick(Sender: TObject);
    procedure dsMainListStateChange(Sender: TObject);
    procedure fibdsMainListAfterDelete(DataSet: TDataSet);
    procedure SetACButtons(Enabled : Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Run(ID : Integer); dynamic;
    procedure sbRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLikeList: TfrmLikeList;

implementation

uses DM;

{$R *.dfm}

procedure TfrmLikeList.sbFirstClick(Sender: TObject);
begin
 grdMainList.ActiveView.DataController.GotoFirst
end;

procedure TfrmLikeList.sbPriorClick(Sender: TObject);
begin
 grdMainList.ActiveView.DataController.GotoPrev
end;

procedure TfrmLikeList.sbNextClick(Sender: TObject);
begin
 grdMainList.ActiveView.DataController.GotoNext
end;

procedure TfrmLikeList.sbLastClick(Sender: TObject);
begin
 grdMainList.ActiveView.DataController.GotoLast
end;

procedure TfrmLikeList.sbAddClick(Sender: TObject);
begin
 grdMainList.SetFocus;
 grdMainList.ActiveView.DataController.Append
end;

procedure TfrmLikeList.sbDeleteClick(Sender: TObject);
begin
 If (MessageDlg('Хотите удалить текущую запись?',mtConfirmation,mbOKCancel,0)=mrOK) then
  grdMainList.ActiveView.DataController.DeleteFocused
end;

procedure TfrmLikeList.sbCloseClick(Sender: TObject);
begin
 Close
end;

procedure TfrmLikeList.tvMainListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 sbFirst.Enabled := NOT grdMainList.ActiveView.DataController.IsBOF;
 sbLast.Enabled := NOT grdMainList.ActiveView.DataController.IsEOF;
 sbPrior.Enabled := sbFirst.Enabled;
 sbNext.Enabled := sbLast.Enabled
end;

procedure TfrmLikeList.sbFilterClick(Sender: TObject);
begin
 (grdMainList.ActiveView as TcxGridDBTableView).Filtering.RunCustomizeDialog(nil)
end;

procedure TfrmLikeList.SetACButtons(Enabled : Boolean);
begin
 sbApply.Enabled := Enabled;
 sbCancel.Enabled := Enabled
end;

procedure TfrmLikeList.dsMainListStateChange(Sender: TObject);
begin
 SetACButtons((fibdsMainList.State in [dsEdit,dsInsert]) or (fibdsMainList.UpdatesPending))
end;

procedure TfrmLikeList.fibdsMainListAfterDelete(DataSet: TDataSet);
begin
 SetACButtons(True)
end;

procedure TfrmLikeList.FormCreate(Sender: TObject);
begin
 inherited;
 cxSplitter1.CloseSplitter
end;

procedure TfrmLikeList.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Shift=[ssCtrl]) and (Key in [Ord('F'),Ord('f'),Ord('А'),Ord('а')]) then
  sbFilter.Click
end;

procedure TfrmLikeList.Run(ID : Integer);
begin
 OpenAll;
 If (ID<>0) then
  (grdMainList.ActiveView as TcxGridDBTableView).DataController.LocateByKey(ID);
 Show
end;

procedure TfrmLikeList.sbRefreshClick(Sender: TObject);
begin
 If (MessageDlg('Хотите полностью обновить информацию?',mtConfirmation,mbOKCancel,0)=mrOK) then
  OpenAll
end;

end.
