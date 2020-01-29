program Clinic;

{%ToDo 'Clinic.todo'}

uses
  Forms,
  Windows,
  Main in 'Main.pas' {frmMain},
  Like in 'Like.pas' {frmLike},
  ExportOptions in 'ExportOptions.pas' {frmExportOptions},
  About in 'About.pas' {frmAbout},
  DM in 'DM.pas' {frmDM: TDataModule},
  Persons in 'Persons.pas' {frmPersons},
  AdministrativeFormations in 'AdministrativeFormations.pas' {frmAdministrativeFormations},
  Departments in 'Departments.pas' {frmDepartments},
  Diagnoses in 'Diagnoses.pas' {frmDiagnoses},
  JobPlacements in 'JobPlacements.pas' {frmJobPlacements},
  MedicalInstitutions in 'MedicalInstitutions.pas' {frmMedicalInstitutions},
  Prescriptions in 'Prescriptions.pas' {frmPrescriptions},
  Remedies in 'Remedies.pas' {frmRemedies},
  devex_loc in 'devex_loc.pas',
  LikeList in 'LikeList.pas' {frmLikeList},
  LikeTabs in 'LikeTabs.pas' {frmLikeTabs},
  Orders in 'Orders.pas' {frmOrders},
  Jobs in 'Jobs.pas' {frmJobs},
  PersonalCards in 'PersonalCards.pas' {frmPersonalCards},
  GoodsAndServices in 'GoodsAndServices.pas' {frmGoodsAndServices},
  PriceList in 'PriceList.pas' {frmPriceList},
  CashDesk in 'CashDesk.pas' {frmCashDesk},
  ReceiptsAnal in 'ReceiptsAnal.pas' {frmReceiptsAnal},
  AdminReports in 'AdminReports.pas' {frmAdminReports},
  Misk in 'Misk.pas',
  AdminProg in 'AdminProg.pas' {frmAdminProg},
  DrvFRLib_TLB in 'DrvFRLib_TLB.pas',
  KKMDriver in 'KKMDriver.pas',
  ComSec in 'comsec.pas',
  fmuData in '..\..\Program Files\Штрих-М\Драйвер ФР A4\Примеры\Delphi 5.0\FMU\fmuData.pas' {fmData},
  Change in 'Change.pas' {frmChange};

var tc : Cardinal;
{$R *.RES}

begin
  Application.Initialize;
  frmAbout := TfrmAbout.Create(Application);
  tc := GetTickCount;
  frmAbout.ClientWidth := frmAbout.Image1.Picture.Width;
  frmAbout.ClientHeight := frmAbout.Image1.Picture.Height;
  frmAbout.AlphaBlend := False;
  frmAbout.Show;
  frmAbout.Update;
  Application.Title := 'Clinic';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmDM, frmDM);
  While Abs(GetTickCount-tc)<2000 do
   Application.ProcessMessages;
{  frmAbout.AlphaBlendValue := 255;
  frmAbout.AlphaBlend := True;
  While Abs(GetTickCount-tc)<2000 do
   Begin
    If (Trunc((GetTickCount-tc)/10)=(GetTickCount-tc)/10) then
     frmAbout.AlphaBlendValue := frmAbout.AlphaBlendValue-3;
     Application.ProcessMessages;
   End;}
  frmAbout.Free;
  Application.Run;
end.
