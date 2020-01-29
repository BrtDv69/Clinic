unit Like;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, dxBar, cxGridPopupMenu, cxGridTableView, cxGridDBTableView,
  FIBDatabase, pFIBDatabase, DB, FIBDataSet, pFIBDataSet, cxPC, pFIBQuery;

type
  TfrmLike = class(TForm)
    trMain: TpFIBTransaction;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure OpenAll; virtual;
    procedure PrintClick(Sender: TObject);
  private
    { Private declarations }
    procedure ExportClick(Sender: TObject);
    procedure NewItemRowSelectorClick(Sender: TObject);
    procedure HeaderAutoHeightClick(Sender: TObject);
    procedure CellAutoHeightClick(Sender: TObject);
    procedure ShowPreView(Sender: TObject);
    procedure TaskBarClick(Sender: TObject);
    procedure PopupMenuButtonClick(Sender: TObject);
  public
    { Public declarations }
   FName : String;
  end;

var
  frmLike: TfrmLike;

implementation

uses Main, ExportOptions, DM, AdminReports, Misk, FIBQuery;

{$R *.dfm}

procedure TfrmLike.TaskBarClick(Sender: TObject);
 var F : TForm;
begin
 F := TForm(TComponent(Sender).Tag);
 With F do
  Begin
   BringToFront;
   If (WindowState=wsMinimized) then
    ShowWindow(Handle,SW_RESTORE);
  End
end;

procedure TfrmLike.FormCreate(Sender: TObject);
 var k : Integer;
     FMenuItem: TMenuItem;
     Comp : TComponent;
     MemStream : TMemoryStream;
     tmpBtn : TdxBarButton;
begin
 frmMain.bliListWindows.Items.AddObject(Caption, Self);
 tmpBtn := TdxBarButton.Create(frmMain);
 With tmpBtn do
  Begin
   Caption := FName;
   Hint := FName;
   ButtonStyle := bsChecked;
   PaintStyle := psCaption;
   Tag := Integer(Sender);  {store form in button's tag }
   OnClick := TaskBarClick;
   GroupIndex := 1;
   AllowAllUp := False;
   Down := True;
   frmMain.dxBarManager.Bars[2].LockUpdate := True;
   frmMain.dxBarManager.Bars[2].ItemLinks.Add.Item := tmpBtn;
   frmMain.dxBarManager.Bars[2].LockUpdate := False
  end;
 Left := (Screen.Width-Width) div 2;
{ trMain.Active := True;
 ibsGridsSetup.SQL.Clear;
 ibsGridsSetup.SQL.Add('select UT.TUNING from USERS_TUNINGS UT where (UT.USER_NAME=current_user) and (UT.ITEM_NAME=:ITEM_NAME)');
 ibsGridsSetup.GenerateParamNames := True;}
 For k := 0 to Pred(ComponentCount) do
  Begin
   If (Components[k] is TcxGridPopupMenu) then
    Begin
     FMenuItem := TMenuItem.Create(Components[k]);
     FMenuItem.Caption := '-';
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Панель ввода новой строки';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.NewItemRow;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := NewItemRowSelectorClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Автоматический подбор высоты заголовков столбцов';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.HeaderAutoHeight;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := HeaderAutoHeightClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Автоматический подбор высоты строк';
     FMenuItem.Checked := ((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).OptionsView.CellAutoHeight;
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := CellAutoHeightClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k] as TcxGridPopupMenu);
     FMenuItem.Caption := 'Показывать строку комментариев';
     FMenuItem.Checked := (((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).Preview.Column<>Nil) and (((Components[k] as TcxGridPopupMenu).Grid.ActiveView as TcxGridTableView).Preview.Visible);
     FMenuItem.AutoCheck := True;
     FMenuItem.OnClick := ShowPreView;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create(Components[k]);
     FMenuItem.Caption := '-';
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem);
     FMenuItem := TMenuItem.Create((Components[k] as TcxGridPopupMenu));
     FMenuItem.Caption := 'Экспорт';
     FMenuItem.OnClick := ExportClick;
     TPopupMenu((Components[k] as TcxGridPopupMenu).BuiltInPopupMenus[0].PopupMenu).Items.Add(FMenuItem)
    End;
   If (Components[k] is TcxGridDBTableView) then
    Begin
     (Components[k] as TcxGridDBTableView).OptionsView.NewItemRowInfoText := 'Новая запись вставляется тут!';
{     ibsGridsSetup.ParamByName('ITEM_NAME').Value := (Components[k] as TcxGridDBTableView).Owner.Name+'\'+Name;
     ibsGridsSetup.ExecQuery;
     If (ibsGridsSetup.RecordCount>0) then
      Begin
       MemStream := TMemoryStream.Create;
       ibsGridsSetup.FieldByName('TUNING').SaveToStream(MemStream);
       MemStream.Position := 0;
       (Components[k] as TcxGridDBTableView).RestoreFromStream(MemStream);
       MemStream.Free
      End;
     ibsGridsSetup.Close;
     ibsGridsSetup.ParamByName('ITEM_NAME').Value := (Components[k] as TcxGridDBTableView).Name+'/Filter';
     ibsGridsSetup.ExecQuery;
     If (ibsGridsSetup.RecordCount>0) then
      Begin
       MemStream := TMemoryStream.Create;
       ibsGridsSetup.FieldByName('TUNING').SaveToStream(MemStream);
       MemStream.Position := 0;
       (Components[k] as TcxGridDBTableView).DataController.Filter.LoadFromStream(MemStream);
       MemStream.Free
      End;
     ibsGridsSetup.Close }
    End;
   If (Components[k] is TScrollBox) then
    TScrollBox(Components[k]).VertScrollBar.Position := 0;
   If (Components[k] is TcxPageControl) then
    TcxPageControl(Components[k]).ActivePageIndex := 0
  End;
// trMain.Commit;
end;

procedure TfrmLike.FormActivate(Sender: TObject);
 var i : Integer;
begin
 With frmMain.dxBarManager.Bars[2].ItemLinks do // TaskBar
  For i := Pred(AvailableItemCount) downto 0 do
   With (AvailableItems[i].Item as TdxBarButton) do
    If (TForm(Tag)=Sender) then
     Begin
      Down := True;
      Break
     End
end;

procedure TfrmLike.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree
end;

procedure TfrmLike.FormDestroy(Sender: TObject);
 var k, kg : Integer;
     MemStream : TMemoryStream;
begin
 With frmMain.bliListWindows.Items do
  Delete(IndexOfObject(Self));
{ try
  ibsGridsSetup.SQL.Clear;
  ibsGridsSetup.SQL.Add('execute procedure SET_USER_TUNING(:ITEM_NAME,:TUNING)');
  ibsGridsSetup.GenerateParamNames := True;
  For k := 0 to Pred(ComponentCount) do
   If (Components[k] is TcxGridDBTableView) and ((Components[k] as TcxGridDBTableView).MasterGridView=Nil) then
    Begin
     MemStream := TMemoryStream.Create;
     (Components[k] as TcxGridDBTableView).StoreToStream(MemStream);
     MemStream.Position := 0;
     ibsGridsSetup.ParamByName('ITEM_NAME').AsString := (Components[k] as TcxGridDBTableView).Owner.Name+'\'+Name;
     ibsGridsSetup.ParamByName('TUNING').LoadFromStream(MemStream);
     MemStream.Free;
     ibsGridsSetup.ExecQuery;
     MemStream := TMemoryStream.Create;
     (Components[k] as TcxGridDBTableView).DataController.Filter.SaveToStream(MemStream);
     MemStream.Position := 0;
     ibsGridsSetup.ParamByName('ITEM_NAME').AsString := (Components[k] as TcxGridDBTableView).Name+'/Filter';
     ibsGridsSetup.ParamByName('TUNING').LoadFromStream(MemStream);
     MemStream.Free;
     ibsGridsSetup.ExecQuery
    End;
  trMain.Commit
  trMain.Active := False;
 except
  trMain.Rollback
 end;}
 With frmMain.dxBarManager.Bars[2].ItemLinks do // TaskBar
  For k := Pred(AvailableItemCount) downto 0 do
   With (AvailableItems[k].Item as TdxBarButton) do
    If (TForm(Tag)=Sender) then
     Begin
      Free;
      Break
     End
end;

procedure TfrmLike.ExportClick(Sender: TObject);
begin
 frmExportOptions := TfrmExportOptions.Create((Sender as TMenuItem).Owner.Owner);
 frmExportOptions.AGrid := ((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid;
 frmExportOptions.ShowModal;
 FreeAndNil(frmExportOptions)
end;


procedure TfrmLike.NewItemRowSelectorClick(Sender: TObject);
begin
 With (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView) do
  Begin
   If (OptionsData.Appending or OptionsData.Inserting) then
    OptionsView.NewItemRow := (Sender as TMenuItem).Checked
   else
    (Sender as TMenuItem).Checked := False
  End
end;

procedure TfrmLike.HeaderAutoHeightClick(Sender: TObject);
begin
 (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView).OptionsView.HeaderAutoHeight := (Sender as TMenuItem).Checked
end;

procedure TfrmLike.CellAutoHeightClick(Sender: TObject);
begin
 (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView).OptionsView.CellAutoHeight := (Sender as TMenuItem).Checked
end;

procedure TfrmLike.ShowPreView(Sender: TObject);
begin
 With (((Sender as TMenuItem).Owner as TcxGridPopupMenu).Grid.FocusedView as TcxGridTableView) do
  Begin
   If (Preview.Column<>Nil) then
    Preview.Visible := (Sender as TMenuItem).Checked
   else
    (Sender as TMenuItem).Checked := False
  End
end;

procedure TfrmLike.OpenAll;
begin
 If Not(trMain.InTransaction) then
  trMain.StartTransaction
end;

procedure TfrmLike.PrintClick(Sender: TObject);
 var fibqLocalAux : TpFIBQuery;
     tmpButton : TdxBarButton;
     ReportsCnt : Integer;
begin
 If (GetKeyState(VK_CONTROL)<0) and (User.PrintAdmin) then
  Begin
   Application.CreateForm(TfrmAdminReports,frmAdminReports);
   frmAdminReports.Run(Sender)
  End
 else
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := trMain.DefaultDatabase;
   fibqLocalAux.Transaction := trMain;
   fibqLocalAux.SQL.Clear;
   fibqLocalAux.SQL.Add('select COUNT(*) from REPORTS_SHOING RS');
   fibqLocalAux.SQL.Add('where (RS.SENDER_NAME='''+ReportGetSenderName(TComponent(Sender))+''')');
   fibqLocalAux.ExecQuery;
   ReportsCnt := fibqLocalAux.Fields[0].AsInteger;
   If (ReportsCnt>0) then
    Begin
     fibqLocalAux.Close;
     fibqLocalAux.SQL.Clear;
     fibqLocalAux.SQL.Add('select R.ID, R.REPORT_NAME, R.DEFAULT_PRINTING from REPORTS_SHOING RS, REPORTS R');
     fibqLocalAux.SQL.Add('where (R.ID=RS.REPORT_ID) and (RS.SENDER_NAME='''+ReportGetSenderName(TComponent(Sender))+''') order by 2');
     fibqLocalAux.ExecQuery;
     If (ReportsCnt=1) then
      Begin
       GetReport(trMain.DefaultDatabase, trMain, fibqLocalAux.Fields[0].AsInteger, fibqLocalAux.Fields[1].AsString);
       If (fibqLocalAux.Fields[2].AsInteger=1) then
        frmDM.frxReport.Print
       else
        frmDM.frxReport.ShowReport
      End
     else
      Begin
       If (TdxBarButton(Sender).DropDownMenu=nil) then
        Begin
         TdxBarButton(Sender).DropDownMenu := TdxBarPopupMenu.Create(TComponent(Sender));
         While Not(fibqLocalAux.Eof) do
          Begin
           tmpButton := TdxBarButton.Create(TdxBarButton(Sender).DropDownMenu);
           With tmpButton do
            Begin
             Caption := fibqLocalAux.Fields[1].AsString;
             Tag := fibqLocalAux.Fields[0].AsInteger;
             Description := IntToStr(fibqLocalAux.Fields[2].AsInteger);
             OnClick := PopupMenuButtonClick;
            End;  // with
           TdxBarButton(Sender).DropDownMenu.ItemLinks.Add.Item := tmpButton;
           fibqLocalAux.Next
          End;  // while
        End;
       TdxBarButton(Sender).DropDownMenu.PopupFromCursorPos;
      End
    End;
   fibqLocalAux.Close;
   fibqLocalAux.Free
  End;
end;

procedure TfrmLike.PopupMenuButtonClick(Sender: TObject);
begin
 GetReport(trMain.DefaultDatabase, trMain, TdxBarButton(Sender).Tag, TdxBarButton(Sender).Caption);
 If (StrToInt(TdxBarButton(Sender).Description)=1) then
  frmDM.frxReport.Print
 else
  frmDM.frxReport.ShowReport
end;

end.
