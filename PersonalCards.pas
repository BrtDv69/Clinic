unit PersonalCards;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeTabs, cxGridCustomPopupMenu, cxGridPopupMenu, DB, dxBar,
  FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, cxSplitter,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxLabel, cxGroupBox, cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxDBLabel;

type
  TfrmPersonalCards = class(TfrmLikeTabs)
    cxPageControl2: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    ScrollBox1: TScrollBox;
    cxLabel19: TcxLabel;
    fibdsMainID: TFIBIntegerField;
    fibdsMainPERSON_ID: TFIBIntegerField;
    fibdsMainFILL_DATE: TFIBDateField;
    fibdsMainTABLE_NUMBER: TFIBIntegerField;
    fibdsMainINN: TFIBIntegerField;
    fibdsMainWORK_CHARACTER: TFIBStringField;
    fibdsMainWORK_KIND: TFIBIntegerField;
    fibdsMainWORK_AGREEMENT_NUMBER: TFIBStringField;
    fibdsMainWORK_AGREEMENT_DATE: TFIBDateField;
    fibdsMainBIRTH_PLACE: TFIBStringField;
    fibdsMainBIRTH_PLACE_OKATO: TFIBStringField;
    fibdsMainCITIZENSHIP: TFIBStringField;
    fibdsMainCITIZENSHIP_OKIN: TFIBStringField;
    fibdsMainEDUCATION_LEVEL: TFIBIntegerField;
    fibdsMainEDUCATION_LEVEL_OKIN: TFIBStringField;
    fibdsMainPOST_GRADUATE_EDUCATION_LEVEL: TFIBIntegerField;
    fibdsMainPOST_GRADUATE_EDUCATION_OKIN: TFIBStringField;
    fibdsMainTOTAL_WORK_YEARS: TFIBIntegerField;
    fibdsMainTOTAL_WORK_MONTHS: TFIBIntegerField;
    fibdsMainTOTAL_WORK_DAYS: TFIBIntegerField;
    fibdsMainUNINTERRUPTED_WORK_YEARS: TFIBIntegerField;
    fibdsMainUNINTERRUPTED_WORK_MONTHS: TFIBIntegerField;
    fibdsMainUNINTERRUPTED_WORK_DAYS: TFIBIntegerField;
    fibdsMainMARRIAGE_STATUS: TFIBStringField;
    fibdsMainMARRIAGE_STATUS_OKIN: TFIBStringField;
    fibdsMainPASSPORT_NUMBER: TFIBStringField;
    fibdsMainPASSPORT_DATE: TFIBDateField;
    fibdsMainPASSPORT_DATA: TFIBStringField;
    fibdsMainPASSPORT_REGISTRATION_DATE: TFIBDateField;
    fibdsMainPHONE_NUMBER: TFIBStringField;
    fibdsMainRESERV_CATEGORY: TFIBStringField;
    fibdsMainMILITARY_RANK: TFIBStringField;
    fibdsMainSTAFF: TFIBStringField;
    fibdsMainVUS: TFIBStringField;
    fibdsMainABILITY_CATEGORY: TFIBStringField;
    fibdsMainCOMMISSARIAT: TFIBStringField;
    fibdsMainGENERAL_MILITARY_REGISTRATION: TFIBStringField;
    fibdsMainSPECIAL_MILITARY_REGISTRATION: TFIBStringField;
    fibdsMainMILITARY_DISMISSAL: TFIBIntegerField;
    fibdsMainADDITIONAL_INFORMATION: TFIBStringField;
    fibdsMainCOMMENTS: TFIBStringField;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Image1: TImage;
    cxLabel9: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Image3: TImage;
    cxLabel13: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    grdLanguages: TcxGrid;
    tvLanguages: TcxGridDBTableView;
    tvLanguagesFOREIGN_LANGUAGE: TcxGridDBColumn;
    tvLanguagesFOREIGN_LANGUAGE_SKILL: TcxGridDBColumn;
    tvLanguagesOKIN: TcxGridDBColumn;
    tvLanguagesCOMMENTS: TcxGridDBColumn;
    glLanguages: TcxGridLevel;
    cxLabel16: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel22: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    grdEducations: TcxGrid;
    tvEducations: TcxGridDBBandedTableView;
    glEducations: TcxGridLevel;
    cxLabel17: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel23: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    grdProfessions: TcxGrid;
    tvProfessions: TcxGridDBTableView;
    glProfessions: TcxGridLevel;
    fibdsEducation: TpFIBDataSet;
    dsEducation: TDataSource;
    fibdsPostGraduateEds: TpFIBDataSet;
    dsPostGraduateEds: TDataSource;
    fibdsProfessions: TpFIBDataSet;
    dsProfessions: TDataSource;
    fibdsEducationID: TFIBIntegerField;
    fibdsEducationPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsEducationEDUCATIONAL_INSTITUTION_NAME: TFIBStringField;
    fibdsEducationEDUCATION_DOCUMENT_NAME: TFIBStringField;
    fibdsEducationEDUCATION_DOCUMENT_SERIAL: TFIBStringField;
    fibdsEducationEDUCATION_DOCUMENT_NUMBER: TFIBStringField;
    fibdsEducationGRADUATION_YEAR: TFIBIntegerField;
    fibdsEducationQUALIFICATION: TFIBStringField;
    fibdsEducationSPECIALITY: TFIBStringField;
    fibdsEducationSPECIALITY_OKCO: TFIBStringField;
    fibdsEducationCOMMENTS: TFIBStringField;
    tvEducationsEDUCATIONAL_INSTITUTION_NAME: TcxGridDBBandedColumn;
    tvEducationsEDUCATION_DOCUMENT_NAME: TcxGridDBBandedColumn;
    tvEducationsEDUCATION_DOCUMENT_SERIAL: TcxGridDBBandedColumn;
    tvEducationsEDUCATION_DOCUMENT_NUMBER: TcxGridDBBandedColumn;
    tvEducationsGRADUATION_YEAR: TcxGridDBBandedColumn;
    tvEducationsQUALIFICATION: TcxGridDBBandedColumn;
    tvEducationsSPECIALITY: TcxGridDBBandedColumn;
    tvEducationsSPECIALITY_OKCO: TcxGridDBBandedColumn;
    tvEducationsCOMMENTS: TcxGridDBBandedColumn;
    grdPostGraduateEds: TcxGrid;
    tvPostGraduateEds: TcxGridDBBandedTableView;
    glPostGraduateEds: TcxGridLevel;
    fibdsPostGraduateEdsID: TFIBIntegerField;
    fibdsPostGraduateEdsPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsPostGraduateEdsEDUCATIONAL_INSTITUTION_NAME: TFIBStringField;
    fibdsPostGraduateEdsEDUCATION_DOCUMENT_NAME: TFIBStringField;
    fibdsPostGraduateEdsGRADUATION_YEAR: TFIBIntegerField;
    fibdsPostGraduateEdsSPECIALITY: TFIBStringField;
    fibdsPostGraduateEdsSPECIALITY_OKCO: TFIBStringField;
    fibdsPostGraduateEdsCOMMENTS: TFIBStringField;
    tvPostGraduateEdsEDUCATIONAL_INSTITUTION_NAME: TcxGridDBBandedColumn;
    tvPostGraduateEdsEDUCATION_DOCUMENT_NAME: TcxGridDBBandedColumn;
    tvPostGraduateEdsGRADUATION_YEAR: TcxGridDBBandedColumn;
    tvPostGraduateEdsSPECIALITY: TcxGridDBBandedColumn;
    tvPostGraduateEdsSPECIALITY_OKCO: TcxGridDBBandedColumn;
    tvPostGraduateEdsCOMMENTS: TcxGridDBBandedColumn;
    fibdsProfessionsID: TFIBIntegerField;
    fibdsProfessionsPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsProfessionsPROFESSION: TFIBStringField;
    fibdsProfessionsPROFESSION_OKPDTR: TFIBStringField;
    fibdsProfessionsIS_MAIN: TFIBIntegerField;
    fibdsProfessionsCOMMENTS: TFIBStringField;
    tvProfessionsPROFESSION: TcxGridDBColumn;
    tvProfessionsPROFESSION_OKPDTR: TcxGridDBColumn;
    tvProfessionsIS_MAIN: TcxGridDBColumn;
    tvProfessionsCOMMENTS: TcxGridDBColumn;
    cxDBLabel1: TcxDBLabel;
    fibdsMainBIRTHDAY: TFIBDateField;
    fibdsMainSEX: TFIBStringField;
    fibdsWorkKinds: TpFIBDataSet;
    fibdsWorkKindsID: TFIBIntegerField;
    fibdsWorkKindsNAME: TFIBStringField;
    dsWorkKinds: TDataSource;
    fibdsEducationLevels: TpFIBDataSet;
    dsEducationLevels: TDataSource;
    fibdsEducationLevelsID: TFIBIntegerField;
    fibdsEducationLevelsNAME: TFIBStringField;
    fibdsForeignLanguageSkills: TpFIBDataSet;
    dsForeignLanguageSkills: TDataSource;
    fibdsForeignLanguageSkillsID: TFIBIntegerField;
    fibdsForeignLanguageSkillsNAME: TFIBStringField;
    fibdsPostGraduateEducationLevels: TpFIBDataSet;
    dsPostGraduateEducationLevels: TDataSource;
    fibdsPostGraduateEducationLevelsID: TFIBIntegerField;
    fibdsPostGraduateEducationLevelsNAME: TFIBStringField;
    cxLabel11: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    fibdsAbilityCategories: TpFIBDataSet;
    dsAbilityCategories: TDataSource;
    fibdsMilitaryDismissals: TpFIBDataSet;
    dsMilitaryDismissals: TDataSource;
    fibdsMilitaryDismissalsID: TFIBStringField;
    fibdsMilitaryDismissalsNAME: TFIBStringField;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel44: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel47: TcxLabel;
    grdFamilyInfo: TcxGrid;
    tvFamilyInfo: TcxGridDBTableView;
    glFamilyInfo: TcxGridLevel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    cxLabel36: TcxLabel;
    cxLabel38: TcxLabel;
    cxDBTextEdit24: TcxDBTextEdit;
    cxDBDateEdit4: TcxDBDateEdit;
    cxLabel39: TcxLabel;
    cxLabel43: TcxLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    cxLabel45: TcxLabel;
    cxDBTextEdit25: TcxDBTextEdit;
    cxDBTextEdit26: TcxDBTextEdit;
    cxLabel46: TcxLabel;
    cxDBTextEdit27: TcxDBTextEdit;
    cxLabel50: TcxLabel;
    cxDBTextEdit28: TcxDBTextEdit;
    cxLabel51: TcxLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel55: TcxLabel;
    grdPrivWorkExp: TcxGrid;
    tvPrivWorkExp: TcxGridDBTableView;
    glPrivWorkExp: TcxGridLevel;
    fibdsLanguages: TpFIBDataSet;
    fibdsLanguagesID: TFIBIntegerField;
    fibdsLanguagesPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsLanguagesFOREIGN_LANGUAGE: TFIBStringField;
    fibdsLanguagesFOREIGN_LANGUAGE_SKILL: TFIBIntegerField;
    fibdsLanguagesOKIN: TFIBStringField;
    fibdsLanguagesCOMMENTS: TFIBStringField;
    dsLanguages: TDataSource;
    fibdsPrivWorkExp: TpFIBDataSet;
    dsPrivWorkExp: TDataSource;
    fibdsPrivWorkExpID: TFIBIntegerField;
    fibdsPrivWorkExpPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsPrivWorkExpWORK_EXPERIENCE_YEARS: TFIBIntegerField;
    fibdsPrivWorkExpWORK_EXPERIENCE_MONTHS: TFIBIntegerField;
    fibdsPrivWorkExpWORK_EXPERIENCE_DAYS: TFIBIntegerField;
    fibdsPrivWorkExpCOMMENTS: TFIBStringField;
    tvPrivWorkExpWORK_EXPERIENCE_YEARS: TcxGridDBColumn;
    tvPrivWorkExpWORK_EXPERIENCE_MONTHS: TcxGridDBColumn;
    tvPrivWorkExpWORK_EXPERIENCE_DAYS: TcxGridDBColumn;
    tvPrivWorkExpCOMMENTS: TcxGridDBColumn;
    fibdsFamilyInfo: TpFIBDataSet;
    dsFamilyInfo: TDataSource;
    fibdsFamilyInfoID: TFIBIntegerField;
    fibdsFamilyInfoPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsFamilyInfoFAMILY_STATUS: TFIBStringField;
    fibdsFamilyInfoFIO: TFIBStringField;
    fibdsFamilyInfoBIRTH_YEAR: TFIBIntegerField;
    fibdsFamilyInfoCOMMENTS: TFIBStringField;
    tvFamilyInfoFAMILY_STATUS: TcxGridDBColumn;
    tvFamilyInfoFIO: TcxGridDBColumn;
    tvFamilyInfoBIRTH_YEAR: TcxGridDBColumn;
    tvFamilyInfoCOMMENTS: TcxGridDBColumn;
    fibdsMainListNAME: TFIBStringField;
    fibdsMainListSURNAME: TFIBStringField;
    fibdsMainListSECOND_NAME: TFIBStringField;
    fibdsMainListSEX: TFIBStringField;
    fibdsMainListBIRTHDAY: TFIBDateField;
    tvMainListSECOND_NAME: TcxGridDBColumn;
    tvMainListNAME: TcxGridDBColumn;
    tvMainListSURNAME: TcxGridDBColumn;
    tvMainListSEX: TcxGridDBColumn;
    tvMainListBIRTHDAY: TcxGridDBColumn;
    fibdsMainListCOMMENTS: TFIBStringField;
    tvMainListCOMMENTS: TcxGridDBColumn;
    fibdsMainListID: TFIBIntegerField;
    cxDBLabel2: TcxDBLabel;
    cxDBLabel3: TcxDBLabel;
    cxDBLabel5: TcxDBLabel;
    fibdsAbilityCategoriesID: TFIBStringField;
    fibdsAbilityCategoriesNAME: TFIBStringField;
    grdPersonalCardAwards: TcxGrid;
    tvPersonalCardAwards: TcxGridDBTableView;
    glPersonalCardAwards: TcxGridLevel;
    fibdsPersonalCardAwards: TpFIBDataSet;
    dsPersonalCardAwards: TDataSource;
    fibdsPersonalCardAwardsID: TFIBIntegerField;
    fibdsPersonalCardAwardsPERSONAL_CARD_ID: TFIBIntegerField;
    fibdsPersonalCardAwardsAWARD_NAME: TFIBStringField;
    fibdsPersonalCardAwardsAWARD_DOCUMENT: TFIBStringField;
    fibdsPersonalCardAwardsAWARD_DOCUMENT_NUMBER: TFIBStringField;
    fibdsPersonalCardAwardsAWARD_DOCUMENT_DATE: TFIBDateField;
    fibdsPersonalCardAwardsCOMMENTS: TFIBStringField;
    tvPersonalCardAwardsAWARD_NAME: TcxGridDBColumn;
    tvPersonalCardAwardsAWARD_DOCUMENT: TcxGridDBColumn;
    tvPersonalCardAwardsAWARD_DOCUMENT_NUMBER: TcxGridDBColumn;
    tvPersonalCardAwardsAWARD_DOCUMENT_DATE: TcxGridDBColumn;
    tvPersonalCardAwardsCOMMENTS: TcxGridDBColumn;
    grdPersonalCardSocialPrivilege: TcxGrid;
    tvPersonalCardSocialPrivilege: TcxGridDBTableView;
    glPersonalCardSocialPrivilege: TcxGridLevel;
    fibdsPersonalCardSocialPrivilege: TpFIBDataSet;
    dsPersonalCardSocialPrivilege: TDataSource;
    fibdsPersonalCardSocialPrivilegeID: TFIBIntegerField;
    fibdsPersonalCardSocialPrivilegePERSONAL_CARD_ID: TFIBIntegerField;
    fibdsPersonalCardSocialPrivilegePRIVILEGE_NAME: TFIBStringField;
    fibdsPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_NUMBER: TFIBStringField;
    fibdsPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_DATE: TFIBDateField;
    fibdsPersonalCardSocialPrivilegePRIVILEGE_REASON: TFIBStringField;
    fibdsPersonalCardSocialPrivilegeCOMMENTS: TFIBStringField;
    tvPersonalCardSocialPrivilegePRIVILEGE_NAME: TcxGridDBColumn;
    tvPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_NUMBER: TcxGridDBColumn;
    tvPersonalCardSocialPrivilegePRIVILEGE_DOCUMENT_DATE: TcxGridDBColumn;
    tvPersonalCardSocialPrivilegePRIVILEGE_REASON: TcxGridDBColumn;
    tvPersonalCardSocialPrivilegeCOMMENTS: TcxGridDBColumn;
    cxDBMemo2: TcxDBMemo;
    grdAcceptance: TcxGrid;
    tvAcceptance: TcxGridDBTableView;
    lvAcceptance: TcxGridLevel;
    fibdsPersonalCardAcceptance: TpFIBDataSet;
    dsPersonalCardAcceptance: TDataSource;
    fibdsPersonalCardAcceptanceWORK_START: TFIBDateField;
    fibdsPersonalCardAcceptanceDEPARTMENT_ID: TFIBIntegerField;
    fibdsPersonalCardAcceptanceJOB_ID: TFIBIntegerField;
    fibdsPersonalCardAcceptanceGRADE_QUALIFICATION_CLASS: TFIBStringField;
    fibdsPersonalCardAcceptanceCOMMON_RATE_SCALE_GRADE: TFIBIntegerField;
    fibdsPersonalCardAcceptanceLENGTH_SALARY_RAISE_PERCENT: TFIBFloatField;
    fibdsPersonalCardAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TFIBFloatField;
    fibdsPersonalCardAcceptanceSIGNED: TFIBIntegerField;
    tvAcceptanceWORK_START: TcxGridDBColumn;
    tvAcceptanceDEPARTMENT_ID: TcxGridDBColumn;
    tvAcceptanceJOB_ID: TcxGridDBColumn;
    tvAcceptanceGRADE_QUALIFICATION_CLASS: TcxGridDBColumn;
    tvAcceptanceCOMMON_RATE_SCALE_GRADE: TcxGridDBColumn;
    tvAcceptanceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBColumn;
    tvAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBColumn;
    tvAcceptanceSIGNED: TcxGridDBColumn;
    fibdsPersonalCardAcceptanceID: TFIBIntegerField;
    fibdsMainPENS_NUMBER: TFIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure fibdsMainPERSON_IDChange(Sender: TField);
    procedure fibdsMainSEXGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure tvAcceptanceCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure OpenAll; override;
  private
  public
    { Public declarations }
  end;

var
  frmPersonalCards: TfrmPersonalCards;

implementation

uses DM, Orders, Main;

{$R *.dfm}

var BkMrkIDMainList: Integer = 0;
    DMTagIncreased: Boolean = False;

procedure TfrmPersonalCards.OpenAll;
begin
 inherited;
 If Not(frmDM.trMain.InTransaction) then
  frmDM.trMain.StartTransaction;
 frmDM.fibdsPersons.Open;
 frmDM.fibdsDepartments.Open;
 frmDM.fibdsJobs.Open;
 If Not(DMTagIncreased) then
  Begin
   DMTagIncreased := True;
   frmDM.fibdsPersons.Tag := Succ(frmDM.fibdsPersons.Tag);
   frmDM.fibdsDepartments.Tag := Succ(frmDM.fibdsDepartments.Tag);
   frmDM.fibdsJobs.Tag := Succ(frmDM.fibdsJobs.Tag)
  End; 
 fibdsWorkKinds.Open;
 fibdsForeignLanguageSkills.Open;
 fibdsEducationLevels.Open;
 fibdsPostGraduateEducationLevels.Open;
 fibdsAbilityCategories.Open;
 fibdsMilitaryDismissals.Open;
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
   fibdsMain.ReopenLocate('ID');
   fibdsLanguages.ReopenLocate('ID');
   fibdsEducation.ReopenLocate('ID');
   fibdsPostGraduateEds.ReopenLocate('ID');
   fibdsProfessions.ReopenLocate('ID');
   fibdsPrivWorkExp.ReopenLocate('ID');
   fibdsFamilyInfo.ReopenLocate('ID');
   fibdsPersonalCardAwards.ReopenLocate('ID');
   fibdsPersonalCardSocialPrivilege.ReopenLocate('ID');
   fibdsPersonalCardAcceptance.ReopenLocate('ID')
  End;
end;

procedure TfrmPersonalCards.FormCreate(Sender: TObject);
begin
 FName := 'Личные карточки работников';
 inherited
end;

procedure TfrmPersonalCards.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 If (frmDM.fibdsPersons.Tag=1) then
  frmDM.fibdsPersons.Close
 else
  frmDM.fibdsPersons.Tag := Pred(frmDM.fibdsPersons.Tag);
 If (frmDM.fibdsDepartments.Tag=1) then
  frmDM.fibdsDepartments.Close
 else
  frmDM.fibdsDepartments.Tag := Pred(frmDM.fibdsDepartments.Tag);
 If (frmDM.fibdsJobs.Tag=1) then
  frmDM.fibdsJobs.Close
 else
  frmDM.fibdsJobs.Tag := Pred(frmDM.fibdsJobs.Tag);
 inherited
end;

procedure TfrmPersonalCards.sbAddClick(Sender: TObject);
begin
 If (MessageDlg('Хотите создать новую личную карточку?',mtConfirmation,mbOKCancel,0)=mrOK) then
  fibdsMain.Insert
end;

procedure TfrmPersonalCards.sbDeleteClick(Sender: TObject);
begin
 If (MessageDlg('Хотите удалить личную карточку?',mtConfirmation,mbOKCancel,0)=mrOK) then
  fibdsMain.Delete
end;

procedure TfrmPersonalCards.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMain.CancelUpdates;
   fibdsEducation.CancelUpdates;
   fibdsPostGraduateEds.CancelUpdates;
   fibdsProfessions.CancelUpdates;
   fibdsPersonalCardAwards.CancelUpdates;
   fibdsPersonalCardSocialPrivilege.CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmPersonalCards.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMain.ApplyUpdates;
   BkMrkIDMainList := fibdsMainID.Value;
   fibdsLanguages.ApplyUpdates;
   fibdsEducation.ApplyUpdates;
   fibdsPostGraduateEds.ApplyUpdates;
   fibdsProfessions.ApplyUpdates;
   fibdsPrivWorkExp.ApplyUpdates;
   fibdsFamilyInfo.ApplyUpdates;
   fibdsPersonalCardAwards.ApplyUpdates;
   fibdsPersonalCardSocialPrivilege.ApplyUpdates;
   trMain.Commit;
   OpenAll;
   SetACButtons(False)
  End
end;

procedure TfrmPersonalCards.fibdsMainPERSON_IDChange(Sender: TField);
 var AuxArr : Variant;
begin
 AuxArr := VarArrayCreate([0,3], varVariant);
 AuxArr := frmDM.fibdsPersons.Lookup('ID',fibdsMainPERSON_ID.Value, 'TABLE_NUMBER;BIRTHDAY;SEX;PENS_NUMBER');
 fibdsMainTABLE_NUMBER.Value := AuxArr[0];
 fibdsMainBIRTHDAY.Value := AuxArr[1];
 fibdsMainSEX.Value := AuxArr[2];
 fibdsMainPENS_NUMBER.Value := AuxArr[3]
end;

procedure TfrmPersonalCards.fibdsMainSEXGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 If (Sender.Value='Ж') then
  Text := 'Женский'
 else
  If (Sender.Value='М') then
   Text := 'Мужской'
end;

procedure TfrmPersonalCards.tvAcceptanceCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 If (frmMain.FindComponent('frmOrders')=nil) then
  frmOrders := TfrmOrders.Create(frmMain);
 frmOrders.Run(fibdsPersonalCardAcceptanceID.AsInteger);
 AHandled := True
end;

end.
