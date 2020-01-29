unit Main;

interface

uses
  Forms, Classes, ActnList, ImgList, Controls, AppEvnts, cxLookAndFeels,
  dxBar, dxBarExtItems, RzStatus, dxStatusBar, cxControls, ExtCtrls, SysUtils;

type
  TfrmMain = class(TForm)
    dxStatusBar1: TdxStatusBar;
    dxBarManager: TdxBarManager;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    cxLookAndFeelController1: TcxLookAndFeelController;
    ApplicationEvents1: TApplicationEvents;
    dxBarButton10: TdxBarButton;
    ilToolButtons: TImageList;
    ActionList1: TActionList;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    bliListWindows: TdxBarListItem;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    aMedicalInstitutions: TAction;
    dxBarButton17: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton18: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    aAdministrativeFormations: TAction;
    aDepartments: TAction;
    aJobs: TAction;
    aPersons: TAction;
    aJobPlacements: TAction;
    aDiagnoses: TAction;
    aRemedies: TAction;
    aPrescriptions: TAction;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    aAdminProg: TAction;
    aOrders: TAction;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton36: TdxBarButton;
    Timer1: TTimer;
    dxBarButton37: TdxBarButton;
    aPersonalCards: TAction;
    dxBarButton38: TdxBarButton;
    aGoodsAndServices: TAction;
    aPriceList: TAction;
    dxBarButton39: TdxBarButton;
    aReceipts: TAction;
    dxBarButton40: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    aReceiptsAnal: TAction;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton43: TdxBarButton;
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure bliListWindowsClick(Sender: TObject);
    procedure bliListWindowsGetData(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure dxBarButton18Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure aMedicalInstitutionsExecute(Sender: TObject);
    procedure aDepartmentsExecute(Sender: TObject);
    procedure aAdministrativeFormationsExecute(Sender: TObject);
    procedure aJobsExecute(Sender: TObject);
    procedure aPersonsExecute(Sender: TObject);
    procedure aJobPlacementsExecute(Sender: TObject);
    procedure aDiagnosesExecute(Sender: TObject);
    procedure aRemediesExecute(Sender: TObject);
    procedure aPrescriptionsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aAdminProgExecute(Sender: TObject);
    procedure aOrdersExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure aPersonalCardsExecute(Sender: TObject);
    procedure aGoodsAndServicesExecute(Sender: TObject);
    procedure aPriceListExecute(Sender: TObject);
    procedure aReceiptsExecute(Sender: TObject);
    procedure aReceiptsAnalExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses Like, About, MedicalInstitutions, Departments,
  AdministrativeFormations, Jobs, Persons, Diagnoses, DM, ExportOptions,
  JobPlacements, Prescriptions, Remedies, devex_loc, Orders,
  PersonalCards, GoodsAndServices, PriceList, CashDesk, ReceiptsAnal, Misk,
  AdminProg;

{$R *.dfm}

procedure TfrmMain.ApplicationEvents1Hint(Sender: TObject);
begin
 dxStatusBar1.Panels[1].Text := Application.Hint
end;

procedure TfrmMain.dxBarButton11Click(Sender: TObject);
begin
 TileMode := tbVertical;
 Tile
end;

procedure TfrmMain.dxBarButton13Click(Sender: TObject);
begin
 Cascade
end;

procedure TfrmMain.bliListWindowsClick(Sender: TObject);
begin
 With bliListWindows do
  TfrmLike(Items.Objects[ItemIndex]).Show;
end;

procedure TfrmMain.bliListWindowsGetData(Sender: TObject);
begin
 With bliListWindows do
  ItemIndex := Items.IndexOfObject(ActiveMDIChild);
end;

procedure TfrmMain.dxBarButton17Click(Sender: TObject);
begin
 Close
end;

procedure TfrmMain.dxBarButton18Click(Sender: TObject);
begin
 Application.CreateForm(TfrmAbout,frmAbout);
 frmAbout.ClientWidth := frmAbout.Image1.Picture.Width;
 frmAbout.ClientHeight := frmAbout.Image1.Picture.Height;
 frmAbout.AlphaBlend := False;
 frmAbout.ShowModal;
 frmAbout.Free
end;

procedure TfrmMain.dxBarButton19Click(Sender: TObject);
begin
 TileMode := tbHorizontal;
 Tile
end;

procedure TfrmMain.aMedicalInstitutionsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmMedicalInstitutions')=nil) then
  frmMedicalInstitutions := TfrmMedicalInstitutions.Create(frmMain);
 frmMedicalInstitutions.Show
end;

procedure TfrmMain.aDepartmentsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmDepartments')=nil) then
  frmDepartments := TfrmDepartments.Create(frmMain);
 frmDepartments.Run(0)
end;

procedure TfrmMain.aAdministrativeFormationsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAdministrativeFormations')=nil) then
  frmAdministrativeFormations := TfrmAdministrativeFormations.Create(frmMain);
 frmAdministrativeFormations.Show
end;

procedure TfrmMain.aJobsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmJobs')=nil) then
  frmJobs := TfrmJobs.Create(frmMain);
 frmJobs.Run(0)
end;

procedure TfrmMain.aPersonsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPersons')=nil) then
  frmPersons := TfrmPersons.Create(frmMain);
 frmPersons.Run(0)
end;

procedure TfrmMain.aJobPlacementsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmJobPlacements')=nil) then
  frmJobPlacements := TfrmJobPlacements.Create(frmMain);
 frmJobPlacements.Run(0)
end;

procedure TfrmMain.aDiagnosesExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmDiagnoses')=nil) then
  frmDiagnoses := TfrmDiagnoses.Create(frmMain);
 frmDiagnoses.Show
end;

procedure TfrmMain.aRemediesExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmRemedies')=nil) then
  frmRemedies := TfrmRemedies.Create(frmMain);
 frmRemedies.Show
end;

procedure TfrmMain.aPrescriptionsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPrescriptions')=nil) then
  frmPrescriptions := TfrmPrescriptions.Create(frmMain);
 frmPrescriptions.Show
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
 localize_cx
end;

procedure TfrmMain.aAdminProgExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmAdminProg')=nil) then
  frmAdminProg := TfrmAdminProg.Create(frmMain);
 frmAdminProg.Run(0)
end;

procedure TfrmMain.aOrdersExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmOrders')=nil) then
  frmOrders := TfrmOrders.Create(frmMain);
 frmOrders.Run(0)
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
 dxStatusBar1.Panels[2].Text := FormatDateTime('hh:nn dd.mm.yyyy',Now)
end;

procedure TfrmMain.aPersonalCardsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPersonalCards')=nil) then
  frmPersonalCards := TfrmPersonalCards.Create(frmMain);
 frmPersonalCards.Run(0)
end;

procedure TfrmMain.aGoodsAndServicesExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmGoodsAndServices')=nil) then
  frmGoodsAndServices := TfrmGoodsAndServices.Create(frmMain);
 frmGoodsAndServices.Run(0)
end;

procedure TfrmMain.aPriceListExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmPriceList')=nil) then
  frmPriceList := TfrmPriceList.Create(frmMain);
 frmPriceList.Run(0)
end;

procedure TfrmMain.aReceiptsExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmCashDesk')=nil) then
  frmCashDesk := TfrmCashDesk.Create(frmMain);
 frmCashDesk.Run(0)
end;

procedure TfrmMain.aReceiptsAnalExecute(Sender: TObject);
begin
 If (frmMain.FindComponent('frmReceiptsAnal')=nil) then
  frmReceiptsAnal := TfrmReceiptsAnal.Create(frmMain);
 frmReceiptsAnal.Run(0)
end;

end.
