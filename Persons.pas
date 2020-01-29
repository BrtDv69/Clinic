unit Persons;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, Buttons, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxDBEdit, StdCtrls, RzPanel, RzSplit, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls, dxBar, DB,
  FIBDataSet, pFIBDataSet, LikeList, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxSplitter;

type
 TObjProcedure = procedure(ID : Integer) of object;

type
  TfrmPersons = class(TfrmLikeList)
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListNAME: TFIBStringField;
    fibdsMainListSURNAME: TFIBStringField;
    fibdsMainListSECOND_NAME: TFIBStringField;
    fibdsMainListSEX: TFIBStringField;
    fibdsMainListBIRTHDAY: TFIBDateField;
    fibdsMainListTABLE_NUMBER: TFIBIntegerField;
    fibdsMainListVALID: TFIBIntegerField;
    fibdsMainListCOMMENTS: TFIBStringField;
    tvMainListNAME: TcxGridDBColumn;
    tvMainListSURNAME: TcxGridDBColumn;
    tvMainListSECOND_NAME: TcxGridDBColumn;
    tvMainListSEX: TcxGridDBColumn;
    tvMainListBIRTHDAY: TcxGridDBColumn;
    tvMainListTABLE_NUMBER: TcxGridDBColumn;
    tvMainListVALID: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    fibdsMainListPENS_NUMBER: TFIBIntegerField;
    tvMainListPENS_NUMBER: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpenAll; override;
  private
    { Private declarations }
  public
    { Public declarations }
   LookUpProcedureUpdate : TObjProcedure;
   LookUpProcedureInsert : TObjProcedure;
  end;

var
  frmPersons: TfrmPersons;

implementation

uses DM;

{$R *.dfm}

var BkMrkIDMainList: Integer = 0;

procedure TfrmPersons.FormCreate(Sender: TObject);
begin
 FName := 'Сотрудники';
 inherited
end;

procedure TfrmPersons.OpenAll;
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

procedure TfrmPersons.sbApplyClick(Sender: TObject);
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

procedure TfrmPersons.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmPersons.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F8) and Assigned(LookUpProcedureUpdate) then
  LookUpProcedureUpdate(fibdsMainListID.AsInteger);
 If (Key=vk_F9) and Assigned(LookUpProcedureInsert) then
  LookUpProcedureInsert(fibdsMainListID.AsInteger)
end;

end.
