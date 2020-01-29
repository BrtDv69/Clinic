unit DM;

interface

uses
  SysUtils, Classes, FIBDatabase, pFIBDatabase, ImgList, Controls,
  cxClasses, cxStyles, cxGridTableView, cxLookAndFeels, cxGridCardView,
  cxTL, DB, FIBDataSet, pFIBDataSet, Forms,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridDBTableView,
  cxGrid, Dialogs, Graphics, SIBEABase, SIBFIBEA, frxClass, 
  frxDBSet, frxExportPDF, frxExportImage, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportHTML, frxExportTXT, frxDesgn, frxGZip,
  frxFIBComponents, frxDCtrl, cxEdit, cxEditRepositoryItems;

type
  TfrmDM = class(TDataModule)
    dbMain: TpFIBDatabase;
    ilDisabledButtons: TImageList;
    cxStyleRepository: TcxStyleRepository;
    stHeader: TcxStyle;
    stPreview: TcxStyle;
    cxIncSearch: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    ilButtons: TImageList;
    cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet;
    cxTreeListStyleSheet1: TcxTreeListStyleSheet;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    stNeeded: TcxStyle;
    fibdsPersons: TpFIBDataSet;
    fibdsPersonsID: TFIBIntegerField;
    fibdsPersonsNAME: TFIBStringField;
    fibdsPersonsSURNAME: TFIBStringField;
    fibdsPersonsSECOND_NAME: TFIBStringField;
    fibdsPersonsTABLE_NUMBER: TFIBIntegerField;
    fibdsPersonsVALID: TFIBIntegerField;
    fibdsPersonsFIO: TStringField;
    dsPersons: TDataSource;
    trMain: TpFIBTransaction;
    fibdsDepartments: TpFIBDataSet;
    fibdsDepartmentsID: TFIBIntegerField;
    fibdsDepartmentsNAME: TFIBStringField;
    dsDepartments: TDataSource;
    fibdsJobs: TpFIBDataSet;
    fibdsJobsID: TFIBIntegerField;
    fibdsJobsNAME: TFIBStringField;
    dsJobs: TDataSource;
    SIBfibEventAlerter1: TSIBfibEventAlerter;
    fibdsPersonsSEX: TFIBStringField;
    fibdsPersonsBIRTHDAY: TFIBDateField;
    cxGridViewRepository1: TcxGridViewRepository;
    tvValidPersons: TcxGridDBTableView;
    tvValidPersonsFIO: TcxGridDBColumn;
    tvValidPersonsVALID: TcxGridDBColumn;
    tvValidPersonsID: TcxGridDBColumn;
    opd: TSaveDialog;
    trLock: TpFIBTransaction;
    frxDBDataset: TfrxDBDataset;
    frxTXTExport1: TfrxTXTExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxPDFExport1: TfrxPDFExport;
    frxDesigner: TfrxDesigner;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxReport: TfrxReport;
    frxFIBComponents1: TfrxFIBComponents;
    frxDialogControls1: TfrxDialogControls;
    cxEditRepository1: TcxEditRepository;
    ImageComboBoxSelectRights: TcxEditRepositoryImageComboBoxItem;
    ilAux: TImageList;
    procedure DataModuleCreate(Sender: TObject);
    procedure fibdsPersonsCalcFields(DataSet: TDataSet);
    procedure SIBfibEventAlerter1EventAlert(Sender: TObject;
      EventName: String; EventCount: Integer);
    procedure dbMainBeforeDisconnect(Sender: TObject);
    procedure dbMainAfterConnect(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    function frxReportUserFunction(const MethodName: String;
      var Params: Variant): Variant;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDM: TfrmDM;

implementation

uses Main, Misk;

{$R *.dfm}

procedure TfrmDM.DataModuleCreate(Sender: TObject);
begin
 dbMain.Open;
 InitializeConst(dbMain,trMain);
 frxReport.AddFunction('function CurrencyToStr (nSum : Integer; cTxt1,cTxt2,cTxt3 : String; nTypeWrite : Byte) : String','Разное','Назначение : Возвращает сумму прописью'#13#10+
'Параметры :'#13#10' nSum : 		Сумма, которая будет переведена в пропись'#13#10' cTxt1 :  		Единица измерения, например: РУБЛЬ'#13#10+
' cTxt2 :  		Единица измерения, например: РУБЛЯ'#13#10' cTxt3 :  		Единица измерения, например: РУБЛЕЙ'#13#10' nTypeWrite : 	Род единицы измерения (1-муж, 2-жен)')
end;

procedure TfrmDM.fibdsPersonsCalcFields(DataSet: TDataSet);
begin
 fibdsPersonsFIO.Value := fibdsPersonsSURNAME.AsString+' '+fibdsPersonsNAME.AsString+' '+
                          fibdsPersonsSECOND_NAME.AsString;
 If (fibdsPersonsTABLE_NUMBER.AsString<>'') then
  fibdsPersonsFIO.Value := fibdsPersonsFIO.Value+'; Таб.№'+fibdsPersonsTABLE_NUMBER.AsString
end;

procedure TfrmDM.SIBfibEventAlerter1EventAlert(Sender: TObject;
  EventName: String; EventCount: Integer);
begin
 If (ImmediateUpdate) then
  Begin
   If (EventName='PERSONS') and (fibdsPersons.Active) then
    fibdsPersons.FullRefresh;
   If (EventName='JOBS') and (fibdsJobs.Active) then
    fibdsJobs.FullRefresh;
   If (EventName='DEPARTAMENTS') and (fibdsDepartments.Active) then
    fibdsDepartments.FullRefresh
  End;  
end;

procedure TfrmDM.dbMainBeforeDisconnect(Sender: TObject);
begin
 If (SIBfibEventAlerter1.Registered) then
  SIBfibEventAlerter1.UnRegisterEvents
end;

procedure TfrmDM.dbMainAfterConnect(Sender: TObject);
begin
 If Not (SIBfibEventAlerter1.Registered) then
  SIBfibEventAlerter1.RegisterEvents
end;

procedure TfrmDM.DataModuleDestroy(Sender: TObject);
begin
 dbMain.Connected := False;
end;

function TfrmDM.frxReportUserFunction(const MethodName: String;
  var Params: Variant): Variant;
begin
 If (MethodName='CURRENCYTOSTR') then
  Result := CurrencyToStr(Params[0],Params[1],Params[2],Params[3],Params[4])
end;

end.
