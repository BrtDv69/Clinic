unit Change;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxButtons, cxTextEdit, cxCurrencyEdit, cxControls,
  cxContainer, cxEdit, cxLabel;

type
  TfrmChange = class(TForm)
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    edCash: TcxCurrencyEdit;
    lblTotal: TcxLabel;
    lblChange: TcxLabel;
    cxButton2: TcxButton;
    btnOK: TcxButton;
    procedure edCashKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FTotal: Double; //сумма чека
    FAmount: Double; //сумма денег, внесенных покупателем
    FChange: Double; //сумма сдачи
  public
    { Public declarations }
    function Run(Total: Double): Double;
  end;

var
  frmChange: TfrmChange;

implementation

{$R *.dfm}

function TfrmChange.Run(Total: Double): Double;
begin
 FTotal := Total;
 lblTotal.Caption := FormatFloat('#,##0.00р.',FTotal);
 If (Self.ShowModal = mrOK) then
  Result := FAmount
 else
  Result := -1
end;

procedure TfrmChange.edCashKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (edCash.EditingValue=Null) then
  FAmount := 0
 else
  FAmount := edCash.EditingValue;
 FChange := FAmount-FTotal;
 btnOK.Enabled := Not(FChange<0);
 If (FChange<0) then
  lblChange.Caption := ('-')
 else
  lblChange.Caption := FormatFloat('#,##0.00р.',FChange)
end;

end.
