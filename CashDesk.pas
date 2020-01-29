unit CashDesk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeTabs, cxGridCustomPopupMenu, cxGridPopupMenu, DB, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, pFIBQuery,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxGraphics,
  cxLabel, cxGridDBDataDefinitions, cxCheckBox, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, frxClass, Menus, DrvFRLib_TLB, KKMDriver,
  cxCurrencyEdit, cxButtons;

type
  TfrmCashDesk = class(TfrmLikeTabs)
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListRECEIPT_NUMBER: TFIBIntegerField;
    fibdsMainListCUSTOMER_FIO: TFIBStringField;
    fibdsMainListCOMMENTS: TFIBStringField;
    fibdsMainListAMOUNT: TFIBFloatField;
    tvMainListRECEIPT_NUMBER: TcxGridDBColumn;
    tvMainListCUSTOMER_FIO: TcxGridDBColumn;
    tvMainListAMOUNT: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    fibdsMainListRECEIPT_DATE: TFIBDateField;
    tvMainListRECEIPT_DATE: TcxGridDBColumn;
    fibdsMainID: TFIBIntegerField;
    fibdsMainRECEIPT_DATE: TFIBDateField;
    fibdsMainCUSTOMER_FIO: TFIBStringField;
    fibdsMainCOMMENTS: TFIBStringField;
    fibdsMainBody: TpFIBDataSet;
    dsMainBody: TDataSource;
    fibdsMainBodyID: TFIBIntegerField;
    fibdsMainBodyRECEIPT_ID: TFIBIntegerField;
    fibdsMainBodyPRICE: TFIBFloatField;
    fibdsMainBodyCOMMENTS: TFIBStringField;
    fibdsMainBodyPRICE_LIST_ID: TFIBIntegerField;
    fibdsMainBodyQUANTITY: TFIBIntegerField;
    Panel2: TPanel;
    cxLabel4: TcxLabel;
    lblNumberDate: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    grdMainBody: TcxGrid;
    tvMainBody: TcxGridDBTableView;
    lvMainBody: TcxGridLevel;
    tvMainBodyPRICE_LIST_ID: TcxGridDBColumn;
    tvMainBodyQUANTITY: TcxGridDBColumn;
    tvMainBodyPRICE: TcxGridDBColumn;
    tvMainBodyCOMMENTS: TcxGridDBColumn;
    fibdsMainBodyAMOUNT: TFloatField;
    tvMainBodyAMOUNT: TcxGridDBColumn;
    fibdsPriceList: TpFIBDataSet;
    dsPriceList: TDataSource;
    fibdsPriceListGOODS_SERVICES_NAME: TFIBStringField;
    fibdsPriceListDEPARTMENT_NAME: TFIBStringField;
    fibdsPriceListPRICE: TFIBFloatField;
    fibdsPriceListNAME_WITH_DEPT: TStringField;
    fibdsPriceListID: TFIBIntegerField;
    trLock: TpFIBTransaction;
    cxLabel1: TcxLabel;
    cbOrderType: TcxDBLookupComboBox;
    fibdsReceipts: TpFIBDataSet;
    dsReceipts: TDataSource;
    fibdsMainDEPARTMENT_ID: TFIBIntegerField;
    fibdsReceiptsID: TFIBIntegerField;
    fibdsReceiptsNAME: TFIBStringField;
    fibdsMainRECEIPT_NUMBER: TFIBIntegerField;
    fibdsMainListDEPARTMENT_ID: TFIBIntegerField;
    tvMainListDEPARTMENT_ID: TcxGridDBColumn;
    sbPrintList: TdxBarButton;
    dxBarButton2: TdxBarButton;
    fibdsPriceListCAN_EDIT_PRICE: TFIBIntegerField;
    fibdsMainBodyCAN_EDIT_PRICE: TIntegerField;
    tvMainBodyCAN_EDIT_PRICE: TcxGridDBColumn;
    mmKKMLog: TcxMemo;
    dxBarButton1: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    fibdsMainListKKM: TFIBIntegerField;
    fibdsMainKKM: TFIBIntegerField;
    lblKKM: TcxLabel;
    tvMainListKKM: TcxGridDBColumn;
    fibdsMainListIS_INCOME: TFIBSmallIntField;
    fibdsMainIS_INCOME: TFIBSmallIntField;
    cxDBCheckBox1: TcxDBCheckBox;
    fibdsMainListRELATIVE_AMOUNT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure sbDeleteListClick(Sender: TObject);
    procedure OpenAll; override;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure fibdsMainBodyCalcFields(DataSet: TDataSet);
    procedure tvMainBodyCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure fibdsPriceListCalcFields(DataSet: TDataSet);
    procedure fibdsMainAfterOpen(DataSet: TDataSet);
    procedure fibdsMainBodyPRICE_LIST_IDChange(Sender: TField);
    procedure Panel2Enter(Sender: TObject);
    procedure grdMainBodyEnter(Sender: TObject);
    procedure fibdsMainNewRecord(DataSet: TDataSet);
    procedure fibdsMainAfterInsert(DataSet: TDataSet);
    procedure sbPrintListClick(Sender: TObject);
    procedure sbPrintClick(Sender: TObject);
    procedure tvMainBodyEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure fibdsMainListCalcFields(DataSet: TDataSet);
    procedure fibdsMainKKMChange(Sender: TField);
  private
    { Private declarations }
    procedure GetValueList(const VarName: String; var Value: Variant);
    procedure GetValue(const VarName: String; var Value: Variant);
    procedure AfterPrintReport(Sender: TObject);
//-> медоты работы с ККМ
    function GetDriver: TDrvFR;
    procedure UpdatePage;
    function GetDrvFR: TDrvFR;
    function PrintCheck: Integer;
  protected
    FDriver: TDrvFR;
    FDayCloseNeed: Boolean;
    property Driver: TDrvFR read FDriver;
    property DayCloseNeed: Boolean read FDayCloseNeed;
//<- медоты работы с ККМ
  public
    { Public declarations }
  end;

var
  frmCashDesk: TfrmCashDesk;

implementation

uses DM, FIBQuery, Misk, cxCustomData, Like, Change;

{$R *.dfm}

var BkMrkIDMainList: Integer = 0;
    DMTagIncreased: Boolean = False;
    Amount: Double;
    ServicesName: String;

procedure TfrmCashDesk.FormCreate(Sender: TObject);
 var Psw: String;
begin
 FName := 'Квитанции';
 inherited;
 try
  FDriver := TDrvFR.Create(Self);
 except
  MessageDlg('Не удалось загрузить драйвер ККМ. Работа с ККМ не возможна!', mtWarning, [mbOK],0);
  FreeAndNil(FDriver)
 end;
 If Not (Driver=Nil) then
  While Not(Driver.ResultCode=-1) do
   Begin
    If (InputQuery('Авторизация','Введите пароль кассира:', Psw)) then
     Begin
      Driver.Password := StrToInt(Psw);
      FDayCloseNeed := False;
      If (Driver.GetShortECRStatus=0) then
       Begin
        If (Driver.IsEKLZOverflow) then
         MessageDlg('ВНИМАНИЕ! ЭКЛЗ близка к переполнению!',mtInformation,[mbOK],0);
        If (Driver.ECRMode=10) then //Тестовый прогон
         Begin
          Driver.InterruptTest;
          UpdatePage
         End;
        If Not(Driver=Nil) and (Driver.ECRMode=3) then
         Begin
          MessageDlg('Смена открыта более 24 часов! Необходимо снять отчет с гашением!',mtInformation,[mbOK],0);
          FDayCloseNeed := True
         End;
        If Not(Driver=Nil) and (Driver.ECRMode=5) then
         Begin
          MessageDlg('Блокировка ККМ по неправильному паролю налогового инспектора! Работа с ККМ не возможна!',mtInformation,[mbOK],0);
          FreeAndNil(FDriver)
         End;
        If Not(Driver=Nil) and (Driver.ECRMode=8) then
         Begin
          MessageDlg('Обнаружен незакрытый чек. Анулирован. Повторите печать чека.',mtInformation,[mbOK],0);
          Driver.CancelCheck;
          UpdatePage;
         End;
        If Not(Driver=nil) then
         Driver.Beep;
        Break
       End
     End
    else
     Begin
      MessageDlg('Вы отказались ввести пароль кассира, работа с ККМ не возможна!', mtWarning, [mbOK],0);
      FreeAndNil(FDriver);
      Break
     End;
   End;    // while
 If Not(Driver=Nil) and (Driver.ResultCode=-1) then
  Begin
   MessageDlg('Нет связи с ККМ, работа с ККМ не возможна!', mtWarning, [mbOK],0);
   FreeAndNil(FDriver)
  End
end;

procedure TfrmCashDesk.sbDeleteListClick(Sender: TObject);
 var fibqLocalAux : TpFIBQuery;
begin
 If (MessageDlg('Хотите создать квитанцию на возврат?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   Run(-1);
   dbmComments.DataBinding.DataSource := dsMain;
   sbAdd.Click;
   fibdsMainIS_INCOME.Value := -1;
   If (MessageDlg('Заполнить квитанцию значениями?',mtConfirmation,mbOKCancel,0)=mrOK) then
    Begin
     fibdsMainDEPARTMENT_ID.Value := fibdsMainListDEPARTMENT_ID.Value;
     fibdsMainCUSTOMER_FIO.Value := fibdsMainListCUSTOMER_FIO.Value;
     fibqLocalAux := TpFIBQuery.Create(Nil);
     fibqLocalAux.Database := trMain.DefaultDatabase;
     fibqLocalAux.Transaction := trMain;
     fibqLocalAux.SQL.Clear;
     fibqLocalAux.SQL.Add('SELECT RB.PRICE_LIST_ID, RB.QUANTITY, RB.PRICE, RB.COMMENTS FROM RECEIPT_BODIES RB');
     fibqLocalAux.SQL.Add('WHERE (RB.RECEIPT_ID='+fibdsMainListID.AsString+')');
     fibqLocalAux.ExecQuery;
     While Not(fibqLocalAux.Eof) do
      Begin
       fibdsMainBody.Append;
       fibdsMainBodyPRICE_LIST_ID.Value := fibqLocalAux.Fields[0].Value;
       fibdsMainBodyQUANTITY.Value := fibqLocalAux.Fields[1].Value;
       fibdsMainBodyPRICE.Value := fibqLocalAux.Fields[2].Value;
       If Not(fibqLocalAux.Fields[3].IsNull) then
        fibdsMainBodyCOMMENTS.Value := fibqLocalAux.Fields[3].Value;
       fibqLocalAux.Next
      End;    // while
     fibqLocalAux.Close;
     fibqLocalAux.Free
    End
  End
end;

procedure TfrmCashDesk.OpenAll;
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
 If (cxPageControl1.ActivePage=tsList) then
  If (fibdsMainList.Active) then
   fibdsMainList.ReopenLocate('ID')
  else
   Begin
    fibdsMainList.FullRefresh;
    If (BkMrkIDMainList<>0) then
     fibdsMainList.Locate('ID',BkMrkIDMainList,[])
   End
 else
  Begin
   fibdsReceipts.FullRefresh;
   fibdsMain.ReopenLocate('ID');
   fibdsMainBody.FullRefresh
  End
end;

procedure TfrmCashDesk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 If (frmDM.fibdsDepartments.Tag=1) then
  frmDM.fibdsDepartments.Close
 else
  frmDM.fibdsDepartments.Tag := Pred(frmDM.fibdsDepartments.Tag);
 inherited
end;

procedure TfrmCashDesk.sbAddClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMain) or (fibdsMainRECEIPT_NUMBER.AsInteger>0) then
  Begin
//   If (MessageDlg('Хотите создать новую квитанцию?',mtConfirmation,mbOKCancel,0)=mrOK) then
   fibdsMain.Insert
  End
 else
  Begin
//   If (MessageDlg('Хотите добавить новую услугу в квитанцию?',mtConfirmation,mbOKCancel,0)=mrOK) then
    fibdsMainBody.Append
  End
end;

procedure TfrmCashDesk.sbDeleteClick(Sender: TObject);
begin
 If (fibdsMainKKM.AsInteger=1) then
  Begin
   MessageDlg('Уже пробит кассовый чек. Удалять нельзя!',mtError,[mbOK],0);
   Exit
  End
 else  
  If (dbmComments.DataBinding.DataSource=dsMain) then
   Begin
    If (MessageDlg('Хотите удалить квитанцию?',mtConfirmation,mbOKCancel,0)=mrOK) then
     fibdsMain.Delete
   End
  else
   Begin
    If (MessageDlg('Хотите удалить услугу в квитанции?',mtConfirmation,mbOKCancel,0)=mrOK) then
     fibdsMainBody.Delete
   End
end;

procedure TfrmCashDesk.sbApplyClick(Sender: TObject);
 var fibqLocalAux : TpFIBQuery;
     Setted: Boolean;
     Number : Integer;
begin
// If (MessageDlg('Сохранить квитанцию?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
//  Begin
   If (fibdsMainRECEIPT_NUMBER.Value=0) then
    Begin
     If NOT (trLock.InTransaction) then
      trLock.StartTransaction;
     fibqLocalAux := TpFIBQuery.Create(Nil);
     fibqLocalAux.Database := trMain.DefaultDatabase;
     fibqLocalAux.Transaction := trMain;
     fibqLocalAux.SQL.Clear;
     fibqLocalAux.SQL.Add('select max(R.RECEIPT_NUMBER) MIN_NUMBER from RECEIPTS R');
     fibqLocalAux.SQL.Add('where (R.RECEIPT_DATE!<(select cast('#39+'01.01.'#39+'||extract(year from current_date) as date) from rdb$database)) and (R.RECEIPT_DATE<current_date)');
     fibqLocalAux.ExecQuery;
     Number := fibqLocalAux.Fields[0].AsInteger;
     fibqLocalAux.Close;
     fibqLocalAux.SQL.Clear;
     fibqLocalAux.SQL.Add('select R.RECEIPT_NUMBER from RECEIPTS R where (R.RECEIPT_DATE=current_date)');
     fibqLocalAux.ExecQuery;
     If (fibqLocalAux.RecordCount=0) then
      fibdsMainRECEIPT_NUMBER.Value := Succ(Number)
     else
      Begin
       Setted := False;
       While Not(fibqLocalAux.Eof) do
        Begin
         If ((fibqLocalAux.Fields[0].AsInteger-Number)>1) then
          Begin
           fibdsMainRECEIPT_NUMBER.Value := Succ(Number);
           Setted := True;
           Break
          End;
         Number := fibqLocalAux.Fields[0].AsInteger;
         fibqLocalAux.Next
        End;
       If NOT (Setted) then
        fibdsMainRECEIPT_NUMBER.Value := Succ(fibqLocalAux.Fields[0].AsInteger)
      End;
     fibqLocalAux.Close;
     fibqLocalAux.Free
    End;
   fibdsMain.ApplyUpdates;
   BkMrkIDMainList := fibdsMainID.Value;
   fibdsMainBody.First;
   fibdsMainBody.ApplyUpdates;
   trMain.Commit;
   If (trLock.InTransaction) then
    trLock.Commit;
   OpenAll;
   If Not (Driver=Nil) then
    If (PrintCheck=0) then
     Begin
      fibqLocalAux := TpFIBQuery.Create(Nil);
      fibqLocalAux.Database := fibdsMain.Database;
      fibqLocalAux.Transaction := fibdsMain.Transaction;
      fibqLocalAux.SQL.Clear;
      fibqLocalAux.SQL.Add('update RECEIPTS R set KKM=1 where ID='+fibdsMainID.AsString);
      fibqLocalAux.ExecQuery;
      fibqLocalAux.Free;
      trMain.CommitRetaining;
      fibdsMain.FullRefresh;
     End;
   SetACButtons(False)
//  End
end;

procedure TfrmCashDesk.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   If (trLock.InTransaction) then
    trLock.Commit;
   fibdsMain.FullRefresh;
   fibdsMainBody.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmCashDesk.fibdsMainBodyCalcFields(DataSet: TDataSet);
begin
 fibdsMainBodyAMOUNT.Value := fibdsMainBodyPRICE.AsFloat*fibdsMainBodyQUANTITY.AsInteger
end;

procedure TfrmCashDesk.tvMainBodyCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 If NOT(Assigned((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field)) or
    (AViewInfo.Item as TcxGridColumn).IsPreview or (AViewInfo.Selected) then
  Exit;
 If ((AViewInfo.Item.DataBinding as TcxGridItemDBDataBinding).Field.CanModify) and
     (Sender.OptionsData.Editing) and (AViewInfo.Item.Options.Editing)  then
  ACanvas.Brush.Color := clWindow
 else
  ACanvas.Brush.Color := clrReadOnly;
 If (ACanvas.Brush.Color=clWindow) and (AViewInfo.Item=tvMainBodyPRICE) and
    (AViewInfo.GridRecord.Values[tvMainBodyCAN_EDIT_PRICE.Index]=0) then
  ACanvas.Brush.Color := clrReadOnly
end;

procedure TfrmCashDesk.fibdsPriceListCalcFields(DataSet: TDataSet);
begin
 fibdsPriceListNAME_WITH_DEPT.Value := fibdsPriceListGOODS_SERVICES_NAME.AsString+' ['+fibdsPriceListDEPARTMENT_NAME.AsString+']'
end;

procedure TfrmCashDesk.fibdsMainAfterOpen(DataSet: TDataSet);
begin
 If Not(fibdsPriceList.Active) then
  fibdsPriceList.Open;
 If (fibdsMainKKM.AsInteger=0) then
  Begin
   fibdsMain.AllowedUpdateKinds := [ukModify,ukInsert,ukDelete];
   fibdsMainBody.AllowedUpdateKinds := fibdsMain.AllowedUpdateKinds;
   lblKKM.Visible := False
  End
 else
  Begin
   fibdsMain.AllowedUpdateKinds := [ukInsert];
   fibdsMainBody.AllowedUpdateKinds := [];
   lblKKM.Visible := True
  End;
 If (fibdsMain.RecordCount>0) then
  lblNumberDate.Caption := 'Квитанция №'+fibdsMainRECEIPT_NUMBER.AsString+' от '+fibdsMainRECEIPT_DATE.AsString
 else
  lblNumberDate.Caption := 'Квитанция № от '
end;

procedure TfrmCashDesk.fibdsMainBodyPRICE_LIST_IDChange(Sender: TField);
begin
 fibdsMainBodyPRICE.Value := fibdsPriceList.Lookup('ID',fibdsMainBodyPRICE_LIST_ID.AsInteger,'PRICE')
end;

procedure TfrmCashDesk.Panel2Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMain
end;

procedure TfrmCashDesk.grdMainBodyEnter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMainBody
end;

procedure TfrmCashDesk.fibdsMainNewRecord(DataSet: TDataSet);
 var fibqLocalAux : TpFIBQuery;
begin
 fibdsReceipts.First;
 fibdsMainDEPARTMENT_ID.Value := fibdsReceiptsID.AsInteger;
 fibqLocalAux := TpFIBQuery.Create(Nil);
 fibqLocalAux.Database := fibdsMainList.Database;
 fibqLocalAux.Transaction := fibdsMainList.Transaction;
 fibqLocalAux.SQL.Clear;
 fibqLocalAux.SQL.Add('select current_date from rdb$database');
 fibqLocalAux.ExecQuery;
 fibdsMainRECEIPT_DATE.Value := fibqLocalAux.Fields[0].AsDate;
 fibqLocalAux.Close;
 fibqLocalAux.Free;
 lblNumberDate.Caption := 'Квитанция № НОВАЯ от '+fibdsMainRECEIPT_DATE.AsString;
 fibdsMainRECEIPT_NUMBER.Value := 0;
 cxDBTextEdit2.SetFocus
end;

procedure TfrmCashDesk.fibdsMainAfterInsert(DataSet: TDataSet);
begin
 inherited;
 fibdsMain.AllowedUpdateKinds := [ukModify,ukInsert,ukDelete];
 fibdsMainBody.AllowedUpdateKinds := fibdsMain.AllowedUpdateKinds
end;

procedure TfrmCashDesk.sbPrintListClick(Sender: TObject);
begin
 frmDM.frxReport.DataSet := frmDM.frxDBDataset;
 frmDM.frxDBDataset.FieldAliases.Clear;
 frmDM.frxDBDataset.DataSource := dsMainList;
 frmDM.frxDBDataset.FieldAliases.Add('-ID=ID');
 frmDM.frxDBDataset.FieldAliases.Add('-DEPARTMENT_ID=DEPARTMENT_ID');
 frmDM.frxDBDataset.FieldAliases.Add('RECEIPT_NUMBER=Номер квитанции');
 frmDM.frxDBDataset.FieldAliases.Add('RECEIPT_DATE=Дата квитанции');
 frmDM.frxDBDataset.FieldAliases.Add('CUSTOMER_FIO=ФИО');
 frmDM.frxDBDataset.FieldAliases.Add('RELATIVE_AMOUNT=Сумма');
 frmDM.frxDBDataset.FieldAliases.Add('COMMENTS=Комментарии');
 frmDM.frxReport.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbPageSetup,pbTools,pbNavigator];
 frmDM.frxReport.OnGetValue := GetValueList;
 PrintClick(Sender)
end;

procedure TfrmCashDesk.GetValueList(const VarName: String;
  var Value: Variant);
begin
 If (VarName='Дата реестра') then
  Value := fibdsMainListRECEIPT_DATE.Value;
 If (VarName='Наименование организации') then
  Value := Institution.Name;
 If (VarName='Кассир') then
  Value := User.SignName
end;

procedure TfrmCashDesk.GetValue(const VarName: String;
  var Value: Variant);
begin
 If (VarName='Дата') then
  Value := fibdsMainRECEIPT_DATE.Value;
 If (VarName='Номер') then
  Value := fibdsMainRECEIPT_NUMBER.Value;
 If (VarName='ФИО плательщика') then
  Value := fibdsMainCUSTOMER_FIO.Value;
{ If (VarName='Распечатан') then
  Value := fibdsMainPRINTED.Value;
} If (VarName='Сумма') then
  Value := Amount;
 If (VarName='Наименование услуг') then
  Value := ServicesName;
 If (VarName='Наименование организации') then
  Value := Institution.Name;
 If (VarName='Кассир') then
  Value := User.SignName;
 If (VarName='Наименование услуги') then
  Value := fibdsPriceList.Lookup('ID',fibdsMainBodyPRICE_LIST_ID.AsInteger,'GOODS_SERVICES_NAME');
 If (VarName='Наименование отделения') then
  Value := fibdsPriceList.Lookup('ID',fibdsMainBodyPRICE_LIST_ID.AsInteger,'DEPARTMENT_NAME')
end;

procedure TfrmCashDesk.sbPrintClick(Sender: TObject);
// var BkMrk : String;
begin
 PrintCheck
{ frmDM.frxDBDataset.FieldAliases.Clear;
 Amount := 0;
 ServicesName := '';
 If (fibdsMainBody.RecordCount>0) then
  Begin
   BkMrk := fibdsMainBody.Bookmark;
   fibdsMainBody.DisableControls;
   fibdsMainBody.First;
   While Not(fibdsMainBody.Eof) do
    Begin
     Amount := Amount+fibdsMainBodyAMOUNT.AsFloat;
     If (ServicesName<>'') then
      ServicesName := ServicesName+'; ';
     ServicesName := ServicesName+fibdsPriceList.Lookup('ID',fibdsMainBodyPRICE_LIST_ID.AsInteger,'GOODS_SERVICES_NAME');
     fibdsMainBody.Next
    End;  // while
   fibdsMainBody.Bookmark := BkMrk;
   fibdsMainBody.EnableControls
  End;
 frmDM.frxReport.DataSet := frmDM.frxDBDataset;
 frmDM.frxDBDataset.DataSource := dsMainBody;
 frmDM.frxDBDataset.FieldAliases.Add('-ID=ID');
 frmDM.frxDBDataset.FieldAliases.Add('-RECEIPT_ID=RECEIPT_ID');
 frmDM.frxDBDataset.FieldAliases.Add('-PRICE_LIST_ID=PRICE_LIST_ID');
 frmDM.frxDBDataset.FieldAliases.Add('QUANTITY=Количество');
 frmDM.frxDBDataset.FieldAliases.Add('-PRICE=Цена');
 frmDM.frxDBDataset.FieldAliases.Add('COMMENTS=Комментарии');
 frmDM.frxDBDataset.FieldAliases.Add('-AMOUNT=Сумма');
 frmDM.frxReport.PreviewOptions.Buttons := [pbPrint,pbExport,pbZoom,pbFind,pbPageSetup,pbTools,pbNavigator];
 frmDM.frxReport.OnGetValue := GetValue;
 frmDM.frxReport.OnAfterPrintReport := AfterPrintReport;
 PrintClick(Sender)}
end;

procedure TfrmCashDesk.tvMainBodyEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
 AAllow := ((AItem.DataBinding as TcxGridItemDBDataBinding).Field.CanModify) and
            (Sender.OptionsData.Editing) and (AItem.Options.Editing);
 If (AItem=tvMainBodyPRICE) then
  AAllow := AAllow and (fibdsPriceList.Lookup('ID',fibdsMainBodyPRICE_LIST_ID.AsInteger,'CAN_EDIT_PRICE')=1)
end;

procedure TfrmCashDesk.AfterPrintReport(Sender: TObject);
 // var fibqLocalAux : TpFIBQuery;
begin
{ fibqLocalAux := TpFIBQuery.Create(Nil);
 fibqLocalAux.Database := fibdsMain.Database;
 fibqLocalAux.Transaction := fibdsMain.Transaction;
 fibqLocalAux.SQL.Clear;
 fibqLocalAux.SQL.Add('update RECEIPTS R set PRINTED=1 where ID='+fibdsMainID.AsString);
 fibqLocalAux.ExecQuery;
 fibqLocalAux.Free;
 trMain.CommitRetaining;
 fibdsMain.FullRefresh
}end;

function TfrmCashDesk.GetDriver: TDrvFR;
begin
  Result := FDriver
end;

function TfrmCashDesk.GetDrvFR: TDrvFR;
begin
  Result := Driver
end;


procedure TfrmCashDesk.FormDestroy(Sender: TObject);
begin
 inherited;
 If Not (FDriver=Nil) then
  FDriver.Free
end;

procedure TfrmCashDesk.UpdatePage;
var
  ResultCode: Integer;
  ResultCodeDescription: string;
begin
  ResultCode := Driver.ResultCode;
  ResultCodeDescription := Driver.ResultCodeDescription;
  If (ResultCode=0) then
   mmKKMLog.Lines.Clear
  else
   mmKKMLog.Lines.Add(Format('(%d) %s', [ResultCode, ResultCodeDescription]));
  mmKKMLog.Visible := Not (ResultCode=0);
end;

function TfrmCashDesk.PrintCheck: Integer;
 var S : String;
     Amount: Double;
     fibqLocalAux : TpFIBQuery;
begin
 If (fibdsMain.UpdatesPending) or (fibdsMain.State in [dsEdit,dsInsert]) or
    (fibdsMainList.UpdatesPending) or (fibdsMainList.State in [dsEdit,dsInsert]) then
  Begin
   MessageDlg('Нельзя пробивать не сохраненный чек.',mtError,[mbOk],0);
   Exit
  End;
 If (fibdsMainKKM.Value=1) then
  Begin
   MessageDlg('Кассовый чек уже был пробит. Нельзя пробивать чек повторно.',mtError,[mbOk],0);
   Exit
  End;
 frmChange := TfrmChange.Create(Self);
 Amount := frmChange.Run(tvMainBody.DataController.Summary.FooterSummaryValues[0]);
 If (Amount>-1) then
  Begin
   fibdsMainBody.First;
   If (fibdsMainIS_INCOME.Value=1) then
    Driver.CheckType := 0 // продажа
   else
    Driver.CheckType := 2; // возврат продажи
   Driver.OpenCheck;
   While Not(fibdsMainBody.Eof) do
    Begin
     S := fibdsPriceList.Lookup('ID',fibdsMainBodyPRICE_LIST_ID.Value,'NAME_WITH_DEPT');
     While (Length(S)>48) do
      Begin
       Driver.UseReceiptRibbon := True;
       Driver.UseJournalRibbon := True;
       Driver.StringForPrinting := Copy(S,1,47);
       Driver.PrintString;
       S := Copy(S,48,800)
      End;
     Driver.StringForPrinting := S;
     Driver.Price := fibdsMainBodyPRICE.Value;
     Driver.Quantity := fibdsMainBodyQUANTITY.Value;
     If (fibdsMainIS_INCOME.Value=1) then
      Driver.Sale
     else
      Driver.ReturnSale;
     UpdatePage;
     fibdsMainBody.Next
    End;    // while
   Driver.StringForPrinting := '------------------------------------------------';
   Driver.Summ1 := Amount;
   Driver.CloseCheck;
   UpdatePage;
   Result := Driver.ResultCode;
   If (Result=0) then
    Begin
     fibqLocalAux := TpFIBQuery.Create(Nil);
     fibqLocalAux.Database := fibdsMain.Database;
     fibqLocalAux.Transaction := fibdsMain.Transaction;
     fibqLocalAux.SQL.Clear;
     fibqLocalAux.SQL.Add('update RECEIPTS R set KKM=1 where ID='+fibdsMainID.AsString);
     fibqLocalAux.ExecQuery;
     fibqLocalAux.Free;
     trMain.CommitRetaining;
     fibdsMain.FullRefresh
    End;
  End
 else
  Result := -1
end;

procedure TfrmCashDesk.dxBarButton4Click(Sender: TObject);
begin
 Driver.PrintReportWithoutCleaning;
 UpdatePage
end;

procedure TfrmCashDesk.dxBarButton5Click(Sender: TObject);
begin
 Driver.PrintReportWithCleaning;
 UpdatePage
end;

procedure TfrmCashDesk.dxBarButton3Click(Sender: TObject);
begin
 Driver.RepeatDocument;
 UpdatePage;
end;

procedure TfrmCashDesk.fibdsMainListCalcFields(DataSet: TDataSet);
begin
 fibdsMainListRELATIVE_AMOUNT.Value := fibdsMainListAMOUNT.Value*fibdsMainListIS_INCOME.Value
end;

procedure TfrmCashDesk.fibdsMainKKMChange(Sender: TField);
begin
 lblKKM.Visible := (Sender.AsInteger=1)
end;

end.
