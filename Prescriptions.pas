unit Prescriptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, Buttons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit, StdCtrls, RzPanel,
  RzSplit, ExtCtrls;

type
  TfrmPrescriptions = class(TfrmLike)
    Panel1: TPanel;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrescriptions: TfrmPrescriptions;

implementation

{$R *.dfm}

procedure TfrmPrescriptions.FormCreate(Sender: TObject);
begin
 FName := 'Назначения';
 inherited;
end;

end.
