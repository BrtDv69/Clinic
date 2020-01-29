unit ComSec;

interface

uses
  Windows, ActiveX, ComObj, Registry, SysUtils;

const
  RPC_C_AUTHN_NONE                 = 0;
  RPC_C_AUTHN_DCE_PRIVATE          = 1;
  RPC_C_AUTHN_DCE_PUBLIC           = 2;
  RPC_C_AUTHN_DEC_PUBLIC           = 4;
  RPC_C_AUTHN_GSS_NEGOTIATE        = 9;
  RPC_C_AUTHN_WINNT                = 10;
  RPC_C_AUTHN_GSS_KERBEROS         = 16;
  RPC_C_AUTHN_MSN                  = 17;
  RPC_C_AUTHN_DPA                  = 18;
  RPC_C_AUTHN_MQ                   = 100;
  RPC_C_AUTHN_DEFAULT              = $FFFFFFFF;

const
  // Legacy Authentication Level
  RPC_C_AUTHN_LEVEL_DEFAULT        = 0;
  RPC_C_AUTHN_LEVEL_NONE           = 1;
  RPC_C_AUTHN_LEVEL_CONNECT        = 2;
  RPC_C_AUTHN_LEVEL_CALL           = 3;
  RPC_C_AUTHN_LEVEL_PKT            = 4;
  RPC_C_AUTHN_LEVEL_PKT_INTEGRITY  = 5;
  RPC_C_AUTHN_LEVEL_PKT_PRIVACY    = 6;

const
  RPC_C_AUTHZ_NONE                 = 0;
  RPC_C_AUTHZ_NAME                 = 1;
  RPC_C_AUTHZ_DCE                  = 2;
  RPC_C_AUTHZ_DEFAULT              = $ffffffff;

const
  // Legacy Impersonation Level
  RPC_C_IMP_LEVEL_DEFAULT          = 0;
  RPC_C_IMP_LEVEL_ANONYMOUS        = 1;
  RPC_C_IMP_LEVEL_IDENTIFY         = 2;
  RPC_C_IMP_LEVEL_IMPERSONATE      = 3;
  RPC_C_IMP_LEVEL_DELEGATE         = 4;

const
  EOAC_NONE                        = $0;
  EOAC_DEFAULT                     = $800;
  EOAC_MUTUAL_AUTH                 = $1;
  EOAC_STATIC_CLOAKING             = $20;
  EOAC_DYNAMIC_CLOAKING            = $40;
  // These are only valid for CoInitializeSecurity
  EOAC_SECURE_REFS                 = $2;
  EOAC_ACCESS_CONTROL              = $4;
  EOAC_APPID                       = $8;
  EOAC_NO_CUSTOM_MARSHAL           = $2000;
  EOAC_DISABLE_AAA                 = $1000;

procedure InitializeSecurity;

implementation

type
  { TCoInitializeSecurity }

  TCoInitializeSecurityProc =  function (pSecDesc: PSecurityDescriptor;
    cAuthSvc: Longint;
    asAuthSvc: PSOleAuthenticationService;
    pReserved1: Pointer;
    dwAuthnLevel, dImpLevel: Longint;
    pReserved2: Pointer;
    dwCapabilities: Longint;
    pReserved3: Pointer): HResult; stdcall;

var
  CoInitializeSecurity: TCoInitializeSecurityProc = nil;

procedure InitializeSecurity;
begin
  if Assigned(CoInitializeSecurity) then
  begin
    OleCheck(CoInitializeSecurity(
           nil,                        //Points to security descriptor
           -1,                          //Count of entries in asAuthSvc
           nil,                         //Array of names to register
           nil,                         //Reserved for future use
           RPC_C_AUTHN_LEVEL_NONE,      //Default authentication level
                                        // for proxies
           RPC_C_IMP_LEVEL_IMPERSONATE, //Default impersonation level
                                        // for proxies
           nil,                         //Reserved; must be set to NULL
           EOAC_NONE,                  //Additional client or
                                        // server-side capabilities
           nil));                       //Reserved for future use
  end;
end;

procedure LoadComExProcs;
var
  Ole32: HModule;
begin
  Ole32 := GetModuleHandle('ole32.dll');
  if Ole32 <> 0 then
  begin
    @CoInitializeSecurity := GetProcAddress(Ole32, 'CoInitializeSecurity');
  end;
end;

initialization
  LoadComExProcs;
end.
