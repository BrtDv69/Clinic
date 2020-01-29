unit KKMSetUp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase, cxPC, cxControls;

type
  TfrmKKMSetUp = class(TfrmLike)
    cxPageControl1: TcxPageControl;
    tsCheck: TcxTabSheet;
    tsKKM: TcxTabSheet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKKMSetUp: TfrmKKMSetUp;

implementation

{$R *.dfm}

procedure TfrmKKMSetUp.FormCreate(Sender: TObject);
begin
 FName := 'Настройки работы с ККМ';
 inherited;
end;

end.
