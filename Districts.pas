unit Districts;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Like, FIBDatabase, pFIBDatabase;

type
  TfrmDistricts = class(TfrmLike)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDistricts: TfrmDistricts;

implementation

{$R *.dfm}

procedure TfrmDistricts.FormCreate(Sender: TObject);
begin
 FName := 'Районы';
 inherited;
end;

end.
