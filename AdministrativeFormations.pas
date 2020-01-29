unit AdministrativeFormations;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, ComCtrls, dxtree, dxdbtree,
  Buttons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo, cxDBEdit,
  StdCtrls, RzPanel, RzSplit, ExtCtrls, cxInplaceContainer, cxTL, cxTLData,
  cxDBTL;

type
  TfrmAdministrativeFormations = class(TfrmLike)
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
    cxDBTreeList1: TcxDBTreeList;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdministrativeFormations: TfrmAdministrativeFormations;

implementation

{$R *.dfm}

procedure TfrmAdministrativeFormations.FormCreate(Sender: TObject);
begin
 FName := 'Административные образования';
 inherited;
end;

end.
