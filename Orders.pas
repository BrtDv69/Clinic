unit Orders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, LikeTabs, dxBar, DB, FIBDataSet, pFIBDataSet, FIBDatabase,
  pFIBDatabase, cxPC, cxControls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridCardView, cxGridDBCardView,
  cxSplitter, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls,
  ExtCtrls, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtons, Menus, cxCheckBox, cxGridDBDataDefinitions,
  FIBQuery, pFIBQuery, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmOrders = class(TfrmLikeTabs)
    sbFirst: TdxBarButton;
    sbLast: TdxBarButton;
    sbNext: TdxBarButton;
    sbPrior: TdxBarButton;
    fibdsMainAcceptance: TpFIBDataSet;
    dsMainAcceptance: TDataSource;
    fibdsMainAcceptanceID: TFIBIntegerField;
    fibdsMainAcceptanceORDER_ID: TFIBIntegerField;
    fibdsMainAcceptanceDEPARTMENT_ID: TFIBIntegerField;
    fibdsMainAcceptanceJOB_ID: TFIBIntegerField;
    fibdsMainAcceptanceGRADE_QUALIFICATION_CLASS: TFIBStringField;
    fibdsMainAcceptanceACCEPTANCE_CONDITIONS: TFIBStringField;
    fibdsMainAcceptanceWORK_AGREEMENT_NUMBER: TFIBStringField;
    fibdsMainAcceptanceWORK_AGREEMENT_DATE: TFIBDateField;
    fibdsMainAcceptanceWORK_START: TFIBDateField;
    fibdsMainAcceptanceWORK_STOP: TFIBDateField;
    fibdsMainAcceptanceTRIAL_PERIOD: TFIBStringField;
    fibdsMainAcceptanceCOMMENTS: TFIBStringField;
    fibdsMainID: TFIBIntegerField;
    fibdsMainNUMBER_PREFIX: TFIBstringField;
    fibdsMainNUMBER: TFIBIntegerField;
    fibdsMainNUMBER_SUFFIX: TFIBstringField;
    fibdsMainORDER_DATE: TFIBDateField;
    fibdsMainORDER_TYPE: TFIBIntegerField;
    fibdsMainCOMMENTS: TFIBstringField;
    fibdsMainSIGNED: TFIBIntegerField;
    grdOrder: TcxGrid;
    tvAcceptance: TcxGridDBTableView;
    tvAcceptanceDEPARTMENT_ID: TcxGridDBColumn;
    tvAcceptanceJOB_ID: TcxGridDBColumn;
    tvAcceptanceGRADE_QUALIFICATION_CLASS: TcxGridDBColumn;
    tvAcceptanceCOMMON_RATE_SCALE_GRADE: TcxGridDBColumn;
    tvAcceptanceWORK_AGREEMENT_NUMBER: TcxGridDBColumn;
    tvAcceptanceWORK_AGREEMENT_DATE: TcxGridDBColumn;
    tvAcceptanceWORK_START: TcxGridDBColumn;
    tvAcceptanceWORK_STOP: TcxGridDBColumn;
    tvAcceptanceTRIAL_PERIOD: TcxGridDBColumn;
    tvAcceptanceCOMMENTS: TcxGridDBColumn;
    cvAcceptance: TcxGridDBCardView;
    cvAcceptanceDEPARTMENT_ID: TcxGridDBCardViewRow;
    cvAcceptanceJOB_ID: TcxGridDBCardViewRow;
    cvAcceptanceGRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow;
    cvAcceptanceACCEPTANCE_CONDITIONS: TcxGridDBCardViewRow;
    cvAcceptanceCOMMON_RATE_SCALE_GRADE: TcxGridDBCardViewRow;
    cvAcceptanceWORK_AGREEMENT_NUMBER: TcxGridDBCardViewRow;
    cvAcceptanceWORK_AGREEMENT_DATE: TcxGridDBCardViewRow;
    cvAcceptanceWORK_START: TcxGridDBCardViewRow;
    cvAcceptanceWORK_STOP: TcxGridDBCardViewRow;
    cvAcceptanceTRIAL_PERIOD: TcxGridDBCardViewRow;
    glOrder: TcxGridLevel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    sbViewKind: TdxBarButton;
    fibdsMainListID: TFIBIntegerField;
    fibdsMainListNUMBER_PREFIX: TFIBstringField;
    fibdsMainListNUMBER: TFIBIntegerField;
    fibdsMainListNUMBER_SUFFIX: TFIBstringField;
    fibdsMainListORDER_DATE: TFIBDateField;
    fibdsMainListORDER_TYPE: TFIBIntegerField;
    fibdsMainListSIGNED: TFIBIntegerField;
    fibdsMainListCOMMENTS: TFIBstringField;
    fibdsMainListPERSONS: TStringField;
    tvMainListNUMBER: TcxGridDBColumn;
    tvMainListORDER_DATE: TcxGridDBColumn;
    tvMainListORDER_TYPE: TcxGridDBColumn;
    tvMainListSIGNED: TcxGridDBColumn;
    tvMainListCOMMENTS: TcxGridDBColumn;
    tvMainListPERSONS: TcxGridDBColumn;
    sbPrintList: TdxBarButton;
    fibdsMainAcceptancePERSON_ID: TFIBIntegerField;
    fibdsOrderTypes: TpFIBDataSet;
    dsOrderTypes: TDataSource;
    fibdsOrderTypesID: TFIBIntegerField;
    fibdsOrderTypesNAME: TFIBStringField;
    cbOrderType: TcxDBLookupComboBox;
    lblSignDate: TcxLabel;
    fibdsMainSIGN_DATE: TFIBDateField;
    fibdsMainAcceptanceCOMMON_RATE_SCALE_GRADE: TFIBIntegerField;
    fibdsMainAcceptanceLENGTH_SALARY_RAISE_PERCENT: TFIBFloatField;
    fibdsMainAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TFIBFloatField;
    tvAcceptanceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBColumn;
    tvAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBColumn;
    cvAcceptanceLENGTH_SALARY_RAISE_PERCENTLENGTH_SALARY_RAISE_PERC: TcxGridDBCardViewRow;
    cvAcceptanceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBCardViewRow;
    fibdsMainTransference: TpFIBDataSet;
    dsMainTransference: TDataSource;
    tvTransference: TcxGridDBTableView;
    fibdsMainTransferenceID: TFIBIntegerField;
    fibdsMainTransferenceORDER_ID: TFIBIntegerField;
    fibdsMainTransferenceTRANSFERENCE_KIND: TFIBIntegerField;
    fibdsMainTransferencePERSON_ID: TFIBIntegerField;
    fibdsMainTransferenceOLD_DEPARTMENT_ID: TFIBIntegerField;
    fibdsMainTransferenceNEW_DEPARTMENT_ID: TFIBIntegerField;
    fibdsMainTransferenceOLD_JOB_ID: TFIBIntegerField;
    fibdsMainTransferenceOLD_GRADE_QUALIFICATION_CLASS: TFIBStringField;
    fibdsMainTransferenceNEW_JOB_ID: TFIBIntegerField;
    fibdsMainTransferenceNEW_GRADE_QUALIFICATION_CLASS: TFIBStringField;
    fibdsMainTransferenceCOMMON_RATE_SCALE_GRADE: TFIBIntegerField;
    fibdsMainTransferenceLENGTH_SALARY_RAISE_PERCENT: TFIBFloatField;
    fibdsMainTransferenceHARMFUL_SALARY_RAISE_PERCENT: TFIBFloatField;
    fibdsMainTransferenceWORK_START: TFIBDateField;
    fibdsMainTransferenceWORK_STOP: TFIBDateField;
    fibdsMainTransferenceTRANSFERENCE_REASON: TFIBStringField;
    fibdsMainTransferenceCOMMENTS: TFIBStringField;
    tvTransferenceTRANSFERENCE_KIND: TcxGridDBColumn;
    tvTransferencePERSON_ID: TcxGridDBColumn;
    tvTransferenceOLD_DEPARTMENT_ID: TcxGridDBColumn;
    tvTransferenceNEW_DEPARTMENT_ID: TcxGridDBColumn;
    tvTransferenceOLD_JOB_ID: TcxGridDBColumn;
    tvTransferenceOLD_GRADE_QUALIFICATION_CLASS: TcxGridDBColumn;
    tvTransferenceNEW_JOB_ID: TcxGridDBColumn;
    tvTransferenceNEW_GRADE_QUALIFICATION_CLASS: TcxGridDBColumn;
    tvTransferenceCOMMON_RATE_SCALE_GRADE: TcxGridDBColumn;
    tvTransferenceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBColumn;
    tvTransferenceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBColumn;
    tvTransferenceWORK_START: TcxGridDBColumn;
    tvTransferenceWORK_STOP: TcxGridDBColumn;
    tvTransferenceTRANSFERENCE_REASON: TcxGridDBColumn;
    tvTransferenceCOMMENTS: TcxGridDBColumn;
    cvTransference: TcxGridDBCardView;
    cvTransferenceTRANSFERENCE_KIND: TcxGridDBCardViewRow;
    cvTransferencePERSON_ID: TcxGridDBCardViewRow;
    cvTransferenceOLD_DEPARTMENT_ID: TcxGridDBCardViewRow;
    cvTransferenceNEW_DEPARTMENT_ID: TcxGridDBCardViewRow;
    cvTransferenceOLD_JOB_ID: TcxGridDBCardViewRow;
    cvTransferenceOLD_GRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow;
    cvTransferenceNEW_JOB_ID: TcxGridDBCardViewRow;
    cvTransferenceNEW_GRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow;
    cvTransferenceCOMMON_RATE_SCALE_GRADE: TcxGridDBCardViewRow;
    cvTransferenceLENGTH_SALARY_RAISE_PERCENT: TcxGridDBCardViewRow;
    cvTransferenceHARMFUL_SALARY_RAISE_PERCENT: TcxGridDBCardViewRow;
    cvTransferenceWORK_START: TcxGridDBCardViewRow;
    cvTransferenceWORK_STOP: TcxGridDBCardViewRow;
    cvTransferenceTRANSFERENCE_REASON: TcxGridDBCardViewRow;
    fibdsTransferenceKind: TpFIBDataSet;
    FIBIntegerField1: TFIBIntegerField;
    FIBStringField1: TFIBStringField;
    dsTransferenceKind: TDataSource;
    fibdsMainAcceptanceSURNAME: TFIBStringField;
    fibdsMainAcceptanceNAME: TFIBStringField;
    fibdsMainAcceptanceSECOND_NAME: TFIBStringField;
    fibdsMainAcceptanceSEX: TFIBStringField;
    fibdsMainAcceptanceBIRTHDAY: TFIBDateField;
    fibdsMainAcceptanceTABLE_NUMBER: TFIBIntegerField;
    tvAcceptanceNAME: TcxGridDBColumn;
    tvAcceptanceSURNAME: TcxGridDBColumn;
    tvAcceptanceSECOND_NAME: TcxGridDBColumn;
    tvAcceptanceSEX: TcxGridDBColumn;
    tvAcceptanceBIRTHDAY: TcxGridDBColumn;
    tvAcceptancePENS_NUMBER: TcxGridDBColumn;
    tvAcceptanceTABLE_NUMBER: TcxGridDBColumn;
    fibqPersonsInOrders: TpFIBQuery;
    cvAcceptanceSURNAME: TcxGridDBCardViewRow;
    cvAcceptanceNAME: TcxGridDBCardViewRow;
    cvAcceptanceSECOND_NAME: TcxGridDBCardViewRow;
    cvAcceptanceSEX: TcxGridDBCardViewRow;
    cvAcceptanceBIRTHDAY: TcxGridDBCardViewRow;
    cvAcceptancePENS_NUMBER: TcxGridDBCardViewRow;
    cvAcceptanceTABLE_NUMBER: TcxGridDBCardViewRow;
    fibdsMainDismissal: TpFIBDataSet;
    dsMainDismissal: TDataSource;
    fibdsMainDismissalID: TFIBIntegerField;
    fibdsMainDismissalORDER_ID: TFIBIntegerField;
    fibdsMainDismissalPERSON_ID: TFIBIntegerField;
    fibdsMainDismissalDEPARTMENT_ID: TFIBIntegerField;
    fibdsMainDismissalJOB_ID: TFIBIntegerField;
    fibdsMainDismissalWORK_AGREEMENT_NUMBER: TFIBStringField;
    fibdsMainDismissalWORK_AGREEMENT_DATE: TFIBDateField;
    fibdsMainDismissalDISMISSAL_DATE: TFIBDateField;
    fibdsMainDismissalDISMISSAL_REASON: TFIBStringField;
    fibdsMainDismissalDISMISSAL_REASON_DOCUMENT: TFIBStringField;
    fibdsMainDismissalCOMMENTS: TFIBStringField;
    fibdsMainDismissalGRADE_QUALIFICATION_CLASS: TFIBStringField;
    tvDismissal: TcxGridDBTableView;
    tvDismissalPERSON_ID: TcxGridDBColumn;
    tvDismissalDEPARTMENT_ID: TcxGridDBColumn;
    tvDismissalJOB_ID: TcxGridDBColumn;
    tvDismissalGRADE_QUALIFICATION_CLASS: TcxGridDBColumn;
    tvDismissalWORK_AGREEMENT_NUMBER: TcxGridDBColumn;
    tvDismissalWORK_AGREEMENT_DATE: TcxGridDBColumn;
    tvDismissalDISMISSAL_DATE: TcxGridDBColumn;
    tvDismissalDISMISSAL_REASON: TcxGridDBColumn;
    tvDismissalDISMISSAL_REASON_DOCUMENT: TcxGridDBColumn;
    tvDismissalCOMMENTS: TcxGridDBColumn;
    cvDismissal: TcxGridDBCardView;
    cvDismissalPERSON_ID: TcxGridDBCardViewRow;
    cvDismissalDEPARTMENT_ID: TcxGridDBCardViewRow;
    cvDismissalJOB_ID: TcxGridDBCardViewRow;
    cvDismissalGRADE_QUALIFICATION_CLASS: TcxGridDBCardViewRow;
    cvDismissalWORK_AGREEMENT_NUMBER: TcxGridDBCardViewRow;
    cvDismissalWORK_AGREEMENT_DATE: TcxGridDBCardViewRow;
    cvDismissalDISMISSAL_DATE: TcxGridDBCardViewRow;
    cvDismissalDISMISSAL_REASON: TcxGridDBCardViewRow;
    cvDismissalDISMISSAL_REASON_DOCUMENT: TcxGridDBCardViewRow;
    cvDismissalCOMMENTS: TcxGridDBCardViewRow;
    fibdsMainCertificationRaisingSpecialization: TpFIBDataSet;
    dsMainCertificationRaisingSpecialization: TDataSource;
    fibdsMainCertificationRaisingSpecializationID: TFIBIntegerField;
    fibdsMainCertificationRaisingSpecializationORDER_ID: TFIBIntegerField;
    fibdsMainCertificationRaisingSpecializationPERSON_ID: TFIBIntegerField;
    fibdsMainCertificationRaisingSpecializationSTART_DATE: TFIBDateField;
    fibdsMainCertificationRaisingSpecializationSTOP_DATE: TFIBDateField;
    fibdsMainCertificationRaisingSpecializationINFO: TFIBStringField;
    fibdsMainCertificationRaisingSpecializationREASON: TFIBStringField;
    fibdsMainCertificationRaisingSpecializationCOMMENTS: TFIBStringField;
    tvCertificationRaisingSpecialization: TcxGridDBTableView;
    tvCertificationRaisingSpecializationPERSON_ID: TcxGridDBColumn;
    tvCertificationRaisingSpecializationSTART_DATE: TcxGridDBColumn;
    tvCertificationRaisingSpecializationSTOP_DATE: TcxGridDBColumn;
    tvCertificationRaisingSpecializationINFO: TcxGridDBColumn;
    tvCertificationRaisingSpecializationREASON: TcxGridDBColumn;
    tvCertificationRaisingSpecializationCOMMENTS: TcxGridDBColumn;
    cvCertificationRaisingSpecialization: TcxGridDBCardView;
    cvCertificationRaisingSpecializationPERSON_ID: TcxGridDBCardViewRow;
    cvCertificationRaisingSpecializationSTART_DATE: TcxGridDBCardViewRow;
    cvCertificationRaisingSpecializationSTOP_DATE: TcxGridDBCardViewRow;
    cvCertificationRaisingSpecializationINFO: TcxGridDBCardViewRow;
    cvCertificationRaisingSpecializationREASON: TcxGridDBCardViewRow;
    cvCertificationRaisingSpecializationCOMMENTS: TcxGridDBCardViewRow;
    fibdsMainGradeServeRaising: TpFIBDataSet;
    dsGradeServeRaising: TDataSource;
    fibdsMainGradeServeRaisingID: TFIBIntegerField;
    fibdsMainGradeServeRaisingORDER_ID: TFIBIntegerField;
    fibdsMainGradeServeRaisingPERSON_ID: TFIBIntegerField;
    fibdsMainGradeServeRaisingGRADE: TFIBIntegerField;
    fibdsMainGradeServeRaisingSTART_DATE: TFIBDateField;
    fibdsMainGradeServeRaisingCOMMENTS: TFIBStringField;
    tvGradeServeRaising: TcxGridDBTableView;
    tvGradeServeRaisingPERSON_ID: TcxGridDBColumn;
    tvGradeServeRaisingGRADE: TcxGridDBColumn;
    tvGradeServeRaisingSTART_DATE: TcxGridDBColumn;
    tvGradeServeRaisingCOMMENTS: TcxGridDBColumn;
    cvGradeServeRaising: TcxGridDBCardView;
    cvGradeServeRaisingPERSON_ID: TcxGridDBCardViewRow;
    cvGradeServeRaisingGRADE: TcxGridDBCardViewRow;
    cvGradeServeRaisingSTART_DATE: TcxGridDBCardViewRow;
    cvGradeServeRaisingCOMMENTS: TcxGridDBCardViewRow;
    fibdsMainLeave: TpFIBDataSet;
    dsMainLeave: TDataSource;
    tvLeave: TcxGridDBTableView;
    fibdsMainLeaveID: TFIBIntegerField;
    fibdsMainLeaveORDER_ID: TFIBIntegerField;
    fibdsMainLeavePERSON_ID: TFIBIntegerField;
    fibdsMainLeaveWORK_PERIOD_START: TFIBDateField;
    fibdsMainLeaveWORK_PERIOD_STOP: TFIBDateField;
    fibdsMainLeaveANNUAL_LEAVE_START: TFIBDateField;
    fibdsMainLeaveANNUAL_LEAVE_STOP: TFIBDateField;
    fibdsMainLeaveADDITIONAL_LEAVE_REASON: TFIBStringField;
    fibdsMainLeaveADDITIONAL_LEAVE_START: TFIBDateField;
    fibdsMainLeaveADDITIONAL_LEAVE_STOP: TFIBDateField;
    fibdsMainLeaveCOMMENTS: TFIBStringField;
    tvLeavePERSON_ID: TcxGridDBColumn;
    tvLeaveWORK_PERIOD_START: TcxGridDBColumn;
    tvLeaveWORK_PERIOD_STOP: TcxGridDBColumn;
    tvLeaveANNUAL_LEAVE_START: TcxGridDBColumn;
    tvLeaveANNUAL_LEAVE_STOP: TcxGridDBColumn;
    tvLeaveADDITIONAL_LEAVE_REASON: TcxGridDBColumn;
    tvLeaveADDITIONAL_LEAVE_START: TcxGridDBColumn;
    tvLeaveADDITIONAL_LEAVE_STOP: TcxGridDBColumn;
    tvLeaveCOMMENTS: TcxGridDBColumn;
    cvLeave: TcxGridDBCardView;
    cvLeavePERSON_ID: TcxGridDBCardViewRow;
    cvLeaveWORK_PERIOD_START: TcxGridDBCardViewRow;
    cvLeaveWORK_PERIOD_STOP: TcxGridDBCardViewRow;
    cvLeaveANNUAL_LEAVE_START: TcxGridDBCardViewRow;
    cvLeaveANNUAL_LEAVE_STOP: TcxGridDBCardViewRow;
    cvLeaveADDITIONAL_LEAVE_REASON: TcxGridDBCardViewRow;
    cvLeaveADDITIONAL_LEAVE_START: TcxGridDBCardViewRow;
    cvLeaveADDITIONAL_LEAVE_STOP: TcxGridDBCardViewRow;
    cvLeaveCOMMENTS: TcxGridDBCardViewRow;
    fibdsMainAcceptancePENS_NUMBER: TFIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure fibdsMainORDER_TYPEChange(Sender: TField);
    procedure sbAddClick(Sender: TObject);
    procedure sbDeleteClick(Sender: TObject);
    procedure sbRefreshClick(Sender: TObject);
    procedure sbApplyClick(Sender: TObject);
    procedure sbCancelClick(Sender: TObject);
    procedure fibdsMainAfterInsert(DataSet: TDataSet);
    procedure fibdsMainAfterOpen(DataSet: TDataSet);
    procedure Panel3Enter(Sender: TObject);
    procedure grdOrderEnter(Sender: TObject);
    procedure sbFirstClick(Sender: TObject);
    procedure sbPriorClick(Sender: TObject);
    procedure sbNextClick(Sender: TObject);
    procedure sbLastClick(Sender: TObject);
    procedure tvAcceptanceFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure sbViewKindClick(Sender: TObject);
    procedure fibdsMainListCalcFields(DataSet: TDataSet);
    procedure fibdsMainListNUMBERGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure sbApplyListClick(Sender: TObject);
    procedure sbCancelListClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure fibdsMainAcceptanceUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
    procedure OpenAll; override;
  private
   procedure SetbtnTypeCaption(ID: Integer);
   procedure UpdateBodyPersonID(PersonID : Integer);
   procedure InsertBodyPersonID(PersonID : Integer);
   function FindGridView(Tag : Integer) : TcxCustomGridView;
  public
    { Public declarations }
  end;

var
  frmOrders: TfrmOrders;

implementation

uses DM, Main, Persons, Departments, Jobs;

{$R *.dfm}

var BkMrkIDMainList: Integer = 0;
    DMTagIncreased: Boolean = False;

procedure TfrmOrders.FormCreate(Sender: TObject);
begin
 FName := 'Приказы';
 inherited;
 glOrder.GridView := nil
end;

procedure TfrmOrders.SetbtnTypeCaption(ID: Integer);
begin
 If (glOrder.GridView<>nil) then
  (glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.Close;
 If (ID in [4,5,6]) then
  Begin
   Case ID of
    4: Begin
        fibdsMainCertificationRaisingSpecialization.ParamByName('INFO').Value := 'OC.CERTIFICATION_INFO';
        fibdsMainCertificationRaisingSpecialization.ParamByName('ORDERS_BODY').Value := 'ORDERS_CERTIFICATION';
        fibdsMainCertificationRaisingSpecialization.AutoUpdateOptions.GeneratorName := 'GEN_ORDERS_CERTIFICATION_ID'
       End;
    5: Begin
        fibdsMainCertificationRaisingSpecialization.ParamByName('INFO').Value := 'OC.SKILL_RAISING_INFO';
        fibdsMainCertificationRaisingSpecialization.ParamByName('ORDERS_BODY').Value := 'ORDERS_SKILL_RAISING';
        fibdsMainCertificationRaisingSpecialization.AutoUpdateOptions.GeneratorName := 'GEN_ORDERS_SKILL_RAISING_ID'
       End;
    6: Begin
        fibdsMainCertificationRaisingSpecialization.ParamByName('INFO').Value := 'OC.SPECIALIZATION_INFO';
        fibdsMainCertificationRaisingSpecialization.ParamByName('ORDERS_BODY').Value := 'ORDERS_SPECIALIZATION';
        fibdsMainCertificationRaisingSpecialization.AutoUpdateOptions.GeneratorName := 'GEN_ORDERS_SPECIALIZATION_ID'
       End
   end;
   fibdsMainCertificationRaisingSpecialization.AutoUpdateOptions.UpdateTableName := fibdsMainCertificationRaisingSpecialization.ParamByName('ORDERS_BODY').AsString;
   glOrder.GridView := FindGridView(4)
  End
 else
  If (ID in [7,8]) then
   Begin
    Case ID of
     7: Begin
         fibdsMainGradeServeRaising.ParamByName('GRADE').Value := 'OG.GRADE';
         fibdsMainGradeServeRaising.ParamByName('ORDERS_BODY').Value := 'ORDERS_GRADE_RAISING';
         fibdsMainGradeServeRaising.AutoUpdateOptions.GeneratorName := 'GEN_ORDERS_GRADE_RAISING_ID';
         tvGradeServeRaisingGRADE.Caption := 'Разряд оплаты труда';
         cvGradeServeRaisingGRADE.Caption := tvGradeServeRaisingGRADE.Caption
        End;
     8: Begin
         fibdsMainGradeServeRaising.ParamByName('GRADE').Value := 'OG.RAISE_PERCENT';
         fibdsMainGradeServeRaising.ParamByName('ORDERS_BODY').Value := 'ORDERS_SERVE_RAISING';
         fibdsMainGradeServeRaising.AutoUpdateOptions.GeneratorName := 'GEN_ORDERS_SERVE_RAISING_ID';
         tvGradeServeRaisingGRADE.Caption := 'Надбавка, %';
         cvGradeServeRaisingGRADE.Caption := tvGradeServeRaisingGRADE.Caption
        End
    end;
    fibdsMainGradeServeRaising.AutoUpdateOptions.UpdateTableName := fibdsMainGradeServeRaising.ParamByName('ORDERS_BODY').AsString;
    glOrder.GridView := FindGridView(7)
   End
  else
   glOrder.GridView := FindGridView(ID);
 If (glOrder.GridView<>nil) then
  Begin
   ((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet as TpFIBDataSet).FullRefresh;
   sbFirst.Enabled := ((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.RecordCount>0);
   sbLast.Enabled := ((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.RecordCount>0)
  End
 else
  Begin
   sbFirst.Enabled := False;
   sbLast.Enabled := False
  End;
 sbPrior.Enabled := sbFirst.Enabled;
 sbNext.Enabled := sbLast.Enabled
end;

procedure TfrmOrders.fibdsMainORDER_TYPEChange(Sender: TField);
begin
 SetbtnTypeCaption(Sender.AsInteger)
end;

procedure TfrmOrders.OpenAll;
begin
 inherited;
 If Not(frmDM.trMain.InTransaction) then
  frmDM.trMain.StartTransaction;
 frmDM.fibdsDepartments.Open;
 frmDM.fibdsJobs.Open;
 frmDM.fibdsPersons.Open;
 If Not(DMTagIncreased) then
  Begin
   DMTagIncreased := True;
   frmDM.fibdsDepartments.Tag := Succ(frmDM.fibdsDepartments.Tag);
   frmDM.fibdsJobs.Tag := Succ(frmDM.fibdsJobs.Tag);
   frmDM.fibdsPersons.Tag := Succ(frmDM.fibdsPersons.Tag)
  End; 
 fibdsOrderTypes.Open;
 fibdsTransferenceKind.Open;
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
  fibdsMain.ReopenLocate('ID')
end;

procedure TfrmOrders.sbAddClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMain) then
  Begin
   If (MessageDlg('Хотите создать новый приказ?',mtConfirmation,mbOKCancel,0)=mrOK) then
   fibdsMain.Insert
  End 
 else
  Begin
   If (MessageDlg('Хотите добавить нового сотрудника?',mtConfirmation,mbOKCancel,0)=mrOK) then
    glOrder.GridView.DataController.Append
  End
end;

procedure TfrmOrders.sbDeleteClick(Sender: TObject);
begin
 If (dbmComments.DataBinding.DataSource=dsMain) then
  Begin
   If (MessageDlg('Хотите удалить приказ?',mtConfirmation,mbOKCancel,0)=mrOK) then
    fibdsMain.Delete
  End
 else
  Begin
   If (MessageDlg('Хотите удалить сотрудника?',mtConfirmation,mbOKCancel,0)=mrOK) then
    glOrder.GridView.DataController.DeleteFocused
  End
end;

procedure TfrmOrders.sbRefreshClick(Sender: TObject);
begin
 If (MessageDlg('Хотите полностью обновить информацию?',mtConfirmation,mbOKCancel,0)=mrOK) then
  Begin
   OpenAll;
   If (glOrder.GridView<>nil) then
    ((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet as TpFIBDataSet).FullRefresh
  End
end;

procedure TfrmOrders.sbApplyClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMain.ApplyUpdates;
   BkMrkIDMainList := fibdsMainID.Value;
   If (glOrder.GridView<>nil) then
    ((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet as TpFIBDataSet).ApplyUpdates;
   trMain.Commit;
   OpenAll;
   SetACButtons(False)
  End
end;

procedure TfrmOrders.sbCancelClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMain.CancelUpdates;
   If (glOrder.GridView<>nil) then
    ((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet as TpFIBDataSet).CancelUpdates;
   SetACButtons(False)
  End
end;

procedure TfrmOrders.fibdsMainAfterInsert(DataSet: TDataSet);
begin
 cbOrderType.SetFocus;
 Inherited;
 SetbtnTypeCaption(0);
 lblSignDate.Visible := False;
 SetACButtons(True)
end;

procedure TfrmOrders.fibdsMainAfterOpen(DataSet: TDataSet);
begin
 SetbtnTypeCaption(fibdsMainORDER_TYPE.AsInteger);
 If (fibdsMainSIGN_DATE.IsNull) then
  lblSignDate.Visible := False
 else
  Begin
   lblSignDate.Caption := FormatDateTime('dd.mm.yyyy',fibdsMainSIGN_DATE.Value);
   lblSignDate.Visible := True
  End
end;

procedure TfrmOrders.Panel3Enter(Sender: TObject);
begin
 dbmComments.DataBinding.DataSource := dsMain
end;

procedure TfrmOrders.grdOrderEnter(Sender: TObject);
begin
 If (glOrder.GridView<>nil) then
  dbmComments.DataBinding.DataSource := (glOrder.GridView.DataController as TcxGridDBDataController).DataSource
end;

procedure TfrmOrders.sbFirstClick(Sender: TObject);
begin
 If (glOrder.GridView<>nil) then
  (glOrder.GridView.DataController as TcxGridDBDataController).GotoFirst
end;

procedure TfrmOrders.sbPriorClick(Sender: TObject);
begin
 If (glOrder.GridView<>nil) then
  (glOrder.GridView.DataController as TcxGridDBDataController).GotoPrev
end;

procedure TfrmOrders.sbNextClick(Sender: TObject);
begin
 If (glOrder.GridView<>nil) then
  (glOrder.GridView.DataController as TcxGridDBDataController).GotoNext
end;

procedure TfrmOrders.sbLastClick(Sender: TObject);
begin
 If (glOrder.GridView<>nil) then
  (glOrder.GridView.DataController as TcxGridDBDataController).GotoLast
end;

procedure TfrmOrders.tvAcceptanceFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
 If (glOrder.GridView<>nil) then
  Begin
   sbFirst.Enabled := NOT (glOrder.GridView.DataController as TcxGridDBDataController).IsBOF;
   sbLast.Enabled := NOT (glOrder.GridView.DataController as TcxGridDBDataController).IsEOF;
   sbPrior.Enabled := sbFirst.Enabled;
   sbNext.Enabled := sbLast.Enabled
  End
end;

function TfrmOrders.FindGridView(Tag : Integer) : TcxCustomGridView;
 var I, lTag: Integer;
Begin
 Result := Nil;
 If (sbViewKind.Down) then
  lTag := Tag*10
 else
  lTag := Tag;
 For I := 0 to Pred(grdOrder.ViewCount) do    // Iterate
  If (grdOrder.Views[I].Tag=lTag) then
   Begin
    Result := grdOrder.Views[I];
    Break
   End;
End;

procedure TfrmOrders.sbViewKindClick(Sender: TObject);
begin
 If ((Sender as TdxBarButton).Down) then
  Begin
   sbViewKind.ImageIndex := 14;
   glOrder.GridView := FindGridView(glOrder.GridView.Tag)
  End
 else
  Begin
   sbViewKind.ImageIndex := 13;
   glOrder.GridView := FindGridView(Trunc(glOrder.GridView.Tag/10))
  End
end;

procedure TfrmOrders.fibdsMainListCalcFields(DataSet: TDataSet);
begin
 Case fibdsMainListORDER_TYPE.AsInteger of
  1: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_ACCEPTANCE';
  2: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_DISMISSAL';
  3: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_TRANSFERENCE';
  4: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_CERTIFICATION';
  5: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_SKILL_RAISING';
  6: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_SPECIALIZATION';
  7: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_GRADE_RAISING';
  8: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_SERVE_RAISING';
  9: fibqPersonsInOrders.ParamByName('ORDERS_TYPE').Value := 'ORDERS_LEAVE';
 end;
 fibqPersonsInOrders.ParamByName('ID').Value := fibdsMainListID.AsInteger;
 fibqPersonsInOrders.ExecQuery;
 fibdsMainListPERSONS.Value := '';
 While Not (fibqPersonsInOrders.Eof) do
  Begin
   fibdsMainListPERSONS.Value := fibdsMainListPERSONS.Value+
                                 fibqPersonsInOrders.FieldByName('SURNAME').AsString+' '+
                                 fibqPersonsInOrders.FieldByName('NAME').AsString+' '+
                                 fibqPersonsInOrders.FieldByName('SECOND_NAME').AsString+'; ';
   fibqPersonsInOrders.Next
  End;
 fibqPersonsInOrders.Close;
 If (Length(fibdsMainListPERSONS.AsString)>0) then
  fibdsMainListPERSONS.Value := Copy(fibdsMainListPERSONS.AsString,0,Length(fibdsMainListPERSONS.AsString)-2)
end;

procedure TfrmOrders.fibdsMainListNUMBERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
 Text := fibdsMainListNUMBER_PREFIX.AsString+fibdsMainListNUMBER.AsString+fibdsMainListNUMBER_SUFFIX.AsString
end;

procedure TfrmOrders.sbApplyListClick(Sender: TObject);
begin
 If (MessageDlg('Сохранить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.ApplyUpdates;
   trMain.Commit;
   OpenAll;
   SetACListButtons(False)
  End
end;

procedure TfrmOrders.sbCancelListClick(Sender: TObject);
begin
 If (MessageDlg('Отменить все сделанные изменения?',mtInformation,[mbCancel,mbOK],0)=mrOK) then
  Begin
   fibdsMainList.CancelUpdates;
   SetACListButtons(False)
  End
end;

procedure TfrmOrders.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_F6) and (glOrder.GridView<>nil) then
  If (((glOrder.GridView.Controller as TcxCustomGridTableController).FocusedItem.DataBinding as TcxGridItemDBDataBinding).FieldName='PERSON_ID') then
   Begin
    If (frmMain.FindComponent('frmPersons')=nil) then
     frmPersons := TfrmPersons.Create(frmMain);
    frmPersons.LookUpProcedureUpdate := UpdateBodyPersonID;
    frmPersons.LookUpProcedureInsert := InsertBodyPersonID;
    frmPersons.Run((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.FieldByName('PERSON_ID').asInteger)
   End
  else
   If (((glOrder.GridView.Controller as TcxCustomGridTableController).FocusedItem.DataBinding as TcxGridItemDBDataBinding).FieldName='DEPARTMENT_ID') then
    Begin
     If (frmMain.FindComponent('frmDepartments')=nil) then
      frmDepartments := TfrmDepartments.Create(frmMain);
     frmDepartments.Run((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.FieldByName('DEPARTMENT_ID').asInteger)
    End
   else
    If (((glOrder.GridView.Controller as TcxCustomGridTableController).FocusedItem.DataBinding as TcxGridItemDBDataBinding).FieldName='JOB_ID') then
     Begin
      If (frmMain.FindComponent('frmJobs')=nil) then
       frmJobs := TfrmJobs.Create(frmMain);
      frmJobs.Run((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.FieldByName('JOB_ID').asInteger)
     End;
 If (Key=vk_F7) and (glOrder.GridView<>nil) then
  If (((glOrder.GridView.Controller as TcxCustomGridTableController).FocusedItem.DataBinding as TcxGridItemDBDataBinding).FieldName='PERSON_ID') then
   Begin
{!    If (frmMain.FindComponent('frmPersonalCards')=nil) then
     frmPersonalCards := TfrmPersonalCards.Create(frmMain);
    frmPersonalCards.LookUpProcedureUpdate := UpdateBodyPersonID;
    frmPersonalCards.LookUpProcedureInsert := InsertBodyPersonID;
    frmPersonalCards.Run((glOrder.GridView.DataController as TcxGridDBDataController).DataSource.DataSet.FieldByName('PERSON_ID').asInteger)}
   End
end;

procedure TfrmOrders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 If (frmDM.fibdsDepartments.Tag=1) then
  frmDM.fibdsDepartments.Close
 else
  frmDM.fibdsDepartments.Tag := Pred(frmDM.fibdsDepartments.Tag);
 If (frmDM.fibdsJobs.Tag=1) then
  frmDM.fibdsJobs.Close
 else
  frmDM.fibdsJobs.Tag := Pred(frmDM.fibdsJobs.Tag);
 If (frmDM.fibdsPersons.Tag=1) then
  frmDM.fibdsPersons.Close
 else
  frmDM.fibdsPersons.Tag := Pred(frmDM.fibdsPersons.Tag);
 inherited;
end;

procedure TfrmOrders.UpdateBodyPersonID(PersonID : Integer);
 var I: Integer;
begin
 If (glOrder.GridView=nil) then
  Exit;
 If NOT((glOrder.GridView as TcxCustomGridTableView).OptionsData.Editing) then
  Exit;
 With (glOrder.GridView as TcxCustomGridTableView) do
  Begin
   For I := 0 to Pred(ItemCount) do
    If ((Items[I].DataBinding as TcxGridItemDBDataBinding).FieldName='PERSON_ID') then
     Begin
      DataController.Edit;
      Items[I].EditValue := PersonID;
      Break
     End
  End
end;

procedure TfrmOrders.InsertBodyPersonID(PersonID : Integer);
 var I: Integer;
begin
 If (glOrder.GridView=nil) then
  Exit;
 If NOT((glOrder.GridView as TcxCustomGridTableView).OptionsData.Editing) then
  Exit;
 With (glOrder.GridView as TcxCustomGridTableView) do
  Begin
   For I := 0 to Pred(ItemCount) do
    If ((Items[I].DataBinding as TcxGridItemDBDataBinding).FieldName='PERSON_ID') then
     Begin
      DataController.Append;
      Items[I].EditValue := PersonID;
      Break
     End
  End
end;

procedure TfrmOrders.fibdsMainAcceptanceUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TFIBUpdateAction);
 var fibqLocalAux : TpFIBQuery;
     S : String;
begin
 If (UpdateKind = ukInsert) or
    ((UpdateKind = ukModify) and
     ((fibdsMainAcceptanceNAME.OldValue<>fibdsMainAcceptanceNAME.NewValue) or
      (fibdsMainAcceptanceSURNAME.OldValue<>fibdsMainAcceptanceSURNAME.NewValue) or
      (fibdsMainAcceptanceSECOND_NAME.OldValue<>fibdsMainAcceptanceSECOND_NAME.NewValue) or
      (fibdsMainAcceptanceSEX.OldValue<>fibdsMainAcceptanceSEX.NewValue) or
      (fibdsMainAcceptanceTABLE_NUMBER.OldValue<>fibdsMainAcceptanceTABLE_NUMBER.NewValue) or
      (fibdsMainAcceptancePENS_NUMBER.OldValue<>fibdsMainAcceptancePENS_NUMBER.NewValue) or
      (fibdsMainAcceptanceBIRTHDAY.OldValue<>fibdsMainAcceptanceBIRTHDAY.NewValue))) then
  Begin
   fibqLocalAux := TpFIBQuery.Create(Nil);
   fibqLocalAux.Database := fibdsMainAcceptance.Database;
   fibqLocalAux.Transaction := fibdsMainAcceptance.Transaction;
   fibqLocalAux.SQL.Clear;
   Case UpdateKind of
    ukInsert: Begin
               fibqLocalAux.SQL.Add('select gen_id(GEN_PERSONS_ID,1) from rdb$database');
               fibqLocalAux.ExecQuery;
               fibdsMainAcceptance.Edit;
               fibdsMainAcceptancePERSON_ID.Value := fibqLocalAux.Fields[0].AsInteger;
               fibdsMainAcceptance.Post;
               fibqLocalAux.Close;
               fibqLocalAux.SQL.Clear;
               fibqLocalAux.SQL.Add('INSERT INTO PERSONS (ID,NAME,SURNAME,SECOND_NAME,');
               fibqLocalAux.SQL.Add('SEX,BIRTHDAY,TABLE_NUMBER,PENS_NUMBER) VALUES (');
               fibqLocalAux.SQL.Add(':ID,:NAME,:SURNAME,:SECOND_NAME,:SEX,:BIRTHDAY,');
               fibqLocalAux.SQL.Add(':TABLE_NUMBER,:PENS_NUMBER)');
               fibqLocalAux.ParamByName('ID').Value := fibdsMainAcceptancePERSON_ID.Value;
               fibqLocalAux.ParamByName('NAME').Value := fibdsMainAcceptanceNAME.AsVariant;
               fibqLocalAux.ParamByName('SURNAME').Value := fibdsMainAcceptanceSURNAME.AsVariant;
               fibqLocalAux.ParamByName('SECOND_NAME').Value := fibdsMainAcceptanceSECOND_NAME.AsVariant;
               fibqLocalAux.ParamByName('SEX').Value := fibdsMainAcceptanceSEX.AsVariant;
               fibqLocalAux.ParamByName('BIRTHDAY').Value := fibdsMainAcceptanceBIRTHDAY.AsVariant;
               fibqLocalAux.ParamByName('TABLE_NUMBER').Value := fibdsMainAcceptanceTABLE_NUMBER.AsVariant;
               fibqLocalAux.ParamByName('PENS_NUMBER').Value := fibdsMainAcceptancePENS_NUMBER.AsVariant;
               fibqLocalAux.ExecQuery;
               fibqLocalAux.Close
              End;
    ukModify: Begin
               fibqLocalAux.SQL.Clear;
               fibqLocalAux.SQL.Add('UPDATE PERSONS SET');
               S := '';
               If (fibdsMainAcceptanceNAME.OldValue<>fibdsMainAcceptanceNAME.NewValue) then
                S := S+'NAME = :NAME, ';
               If (fibdsMainAcceptanceSURNAME.OldValue<>fibdsMainAcceptanceSURNAME.NewValue) then
                S := S+'SURNAME = :SURNAME, ';
               If (fibdsMainAcceptanceSECOND_NAME.OldValue<>fibdsMainAcceptanceSECOND_NAME.NewValue) then
                S := S+'SECOND_NAME = :SECOND_NAME, ';
               If (fibdsMainAcceptanceSEX.OldValue<>fibdsMainAcceptanceSEX.NewValue) then
                S := S+'SEX = :SEX, ';
               If (fibdsMainAcceptanceBIRTHDAY.OldValue<>fibdsMainAcceptanceBIRTHDAY.NewValue) then
                S := S+'BIRTHDAY = :BIRTHDAY, ';
               If (fibdsMainAcceptanceTABLE_NUMBER.OldValue<>fibdsMainAcceptanceTABLE_NUMBER.NewValue) then
                S := S+'TABLE_NUMBER = :TABLE_NUMBER, ';
               If (fibdsMainAcceptancePENS_NUMBER.OldValue<>fibdsMainAcceptancePENS_NUMBER.NewValue) then
                S := S+'PENS_NUMBER = :PENS_NUMBER, ';
               Delete(S,Pred(Length(S)),2);
               fibqLocalAux.SQL.Add(S);
               fibqLocalAux.SQL.Add('WHERE (ID = '+fibdsMainAcceptancePERSON_ID.AsString+')');
               If (fibqLocalAux.FindParam('NAME')<>nil) then
                fibqLocalAux.ParamByName('NAME').Value := fibdsMainAcceptanceNAME.AsVariant;
               If (fibqLocalAux.FindParam('SURNAME')<>nil) then
                fibqLocalAux.ParamByName('SURNAME').Value := fibdsMainAcceptanceSURNAME.AsVariant;
               If (fibqLocalAux.FindParam('SECOND_NAME')<>nil) then
                fibqLocalAux.ParamByName('SECOND_NAME').Value := fibdsMainAcceptanceSECOND_NAME.AsVariant;
               If (fibqLocalAux.FindParam('SEX')<>nil) then
                fibqLocalAux.ParamByName('SEX').Value := fibdsMainAcceptanceSEX.AsVariant;
               If (fibqLocalAux.FindParam('BIRTHDAY')<>nil) then
                fibqLocalAux.ParamByName('BIRTHDAY').Value := fibdsMainAcceptanceBIRTHDAY.AsVariant;
               If (fibqLocalAux.FindParam('TABLE_NUMBER')<>nil) then
                fibqLocalAux.ParamByName('TABLE_NUMBER').Value := fibdsMainAcceptanceTABLE_NUMBER.AsVariant;
               If (fibqLocalAux.FindParam('PENS_NUMBER')<>nil) then
                fibqLocalAux.ParamByName('PENS_NUMBER').Value := fibdsMainAcceptancePENS_NUMBER.AsVariant;
               fibqLocalAux.ExecQuery;
               fibqLocalAux.Close
              End
   end;
   fibqLocalAux.Free
  End;
 UpdateAction := uaApply
end;

end.
