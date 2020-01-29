unit KKMDriver;

interface

uses DrvFRLib_TLB;

  { TKKMFRDriver }

 type
  TKKMFRDriver = class
  private
    FDriver: TDrvFR;
    function GetDriver: TDrvFR;
  public
    destructor Destroy; override;
    property Driver: TDrvFR read GetDriver;
  end;

implementation

{ TKKMFRDriver }

destructor TKKMFRDriver.Destroy;
begin
  FDriver.Free;
  inherited Destroy;
end;

function TKKMFRDriver.GetDriver: TDrvFR;
begin
  if FDriver = nil then
    FDriver := TDrvFR.Create(nil);
  Result := FDriver;
end;

end.
