unit Jobs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeList, dxBar, DB, FIBDataSet, pFIBDataSet, FIBDatabase,
  pFIBDatabase, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, ExtCtrls,
  RzPanel, RzSplit, cxGridCustomPopupMenu, cxGridPopupMenu, cxSplitter;

type
  TfrmJobs = class(TfrmLikeList)
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListNAME: TFIBstringField;
    fibdsMainListCOMMENTS: TFIBstringField;
    tvMainListNAME: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure OpenAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJobs: TfrmJobs;

implementation

uses DM;

{$R *.dfm}

var BkMrkIDMainList: Integer = 0;

procedure TfrmJobs.FormCreate(Sender: TObject);
begin
 FName := 'Должности';
 inherited;
end;

procedure TfrmJobs.OpenAll;
begin
 inherited;
 If (fibdsMainList.Active) then
  fibdsMainList.ReopenLocate('ID')
 else
  Begin
   fibdsMainList.FullRefresh;
   If (BkMrkIDMainList<>0) then
    fibdsMainList.Locate('ID',BkMrkIDMainList,[])
  End
end;

procedure TfrmJobs.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.ApplyUpdates;
   BkMrkIDMainList := fibdsMainListID.Value;
   trMain.Commit;
   OpenAll;
   SetACButtons(False)
  End
end;

procedure TfrmJobs.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   SetACButtons(False)
  End
end;

end.
