unit Remedies;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, Buttons, cxInplaceContainer,
  cxTL, cxTLData, cxDBTL, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMemo, cxDBEdit, StdCtrls, RzPanel, RzSplit, ExtCtrls;

type
  TfrmRemedies = class(TfrmLike)
    Panel1: TPanel;
    pnlComments: TRzSizePanel;
    Label39: TLabel;
    dbmComments: TcxDBMemo;
    cxDBTreeList1: TcxDBTreeList;
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
  frmRemedies: TfrmRemedies;

implementation

{$R *.dfm}

procedure TfrmRemedies.FormCreate(Sender: TObject);
begin
 FName := 'Лекарственные средства';
 inherited;
end;

end.
