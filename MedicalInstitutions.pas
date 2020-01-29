unit MedicalInstitutions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, Buttons, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, StdCtrls, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxDBEdit, RzPanel, RzSplit;

type
  TfrmMedicalInstitutions = class(TfrmLike)
    Panel4: TPanel;
    sbCancelInvoicesList: TSpeedButton;
    sbApplyInvoicesList: TSpeedButton;
    sbDeleteInvoicesList: TSpeedButton;
    sbAddInvoicesList: TSpeedButton;
    sbLastInvoicesList: TSpeedButton;
    sbNextInvoicesList: TSpeedButton;
    sbPriorInvoicesList: TSpeedButton;
    sbFirstInvoicesList: TSpeedButton;
    sbFilterInvoicesList: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Panel1: TPanel;
    grdMedicalInstitutions: TcxGrid;
    tvMedicalInstitutions: TcxGridDBTableView;
    lvMedicalInstitutions: TcxGridLevel;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMedicalInstitutions: TfrmMedicalInstitutions;

implementation

{$R *.dfm}

procedure TfrmMedicalInstitutions.FormCreate(Sender: TObject);
begin
 FName := 'Лечебные учреждения';
 inherited;
end;

end.
