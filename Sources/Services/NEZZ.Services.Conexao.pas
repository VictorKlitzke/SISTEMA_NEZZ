unit NEZZ.Services.Conexao;

interface

uses
  System.SysUtils,
  InterBaseUniProvider,
  Uni,
  UniSQLMonitor;

type
  NEZZMSGERROR = class(Exception);

  iNEZZServicesConexao = interface
    ['{5A7C2F90-15F7-4ECD-85B5-725244390826}']

    function Conectar: iNEZZServicesConexao;
    function Desconectar: iNEZZServicesConexao;
    function Conexao: TUniConnection;
  end;

  TNEZZServicesConexao = class(TInterfacedObject, iNEZZServicesConexao)
  private
    FNEZZConexao: TUniConnection;
    FNEZZProvider: TInterBaseUniProvider;
    FNEZZMonitor: TUniSQLMonitor;

    FPath: string;

    procedure ConexaoConfig;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: iNEZZServicesConexao;

    function Conectar: iNEZZServicesConexao;
    function Desconectar: iNEZZServicesConexao;
    function Conexao: TUniConnection;
  end;

var
  GNEZZConexao: iNEZZServicesConexao;

implementation

{ TNEZZServicesConexao }

function TNEZZServicesConexao.Conectar: iNEZZServicesConexao;
begin
  Result := Self;

  try
    ConexaoConfig;
    FNEZZConexao.Connect;
  except
  on e: Exception do
     raise NEZZMSGERROR.Create('Falha ao tentar conectar-se com Banco de dados.' + #13 + e.Message);
  end
end;

function TNEZZServicesConexao.Conexao: TUniConnection;
begin
  Result := FNEZZConexao;
end;

procedure TNEZZServicesConexao.ConexaoConfig;
begin
  with FNEZZConexao do
  begin
    LoginPrompt := False;

    ProviderName := 'Interbase';
    Server := '127.0.0.1';
    Username := 'SYSDBA';
    Password := 'masterkey';
    Database := FPath + 'C:\SISTEMA_NEZZ\Dados\NEZZ.fdb';
    Port := 3050;
    SpecificOptions.Values['Charset'] := 'UTF8';
    SpecificOptions.Values['ClientLibrary'] := 'fbclient.dll';
  end;
end;

constructor TNEZZServicesConexao.Create;
begin
  FNEZZConexao := TUniConnection.Create(nil);
  FNEZZProvider := TInterBaseUniProvider.Create(nil);
  FNEZZMonitor := TUniSQLMonitor.Create(nil);
end;

function TNEZZServicesConexao.Desconectar: iNEZZServicesConexao;
begin
  Result := Self;

  if FNEZZConexao.Connected then
    FNEZZConexao.Disconnect;
end;

destructor TNEZZServicesConexao.Destroy;
begin
  FNEZZConexao.DisposeOf;
  FNEZZProvider.DisposeOf;
  FNEZZMonitor.DisposeOf;
  inherited;
end;

class function TNEZZServicesConexao.New: iNEZZServicesConexao;
begin
  if not Assigned(GNEZZConexao) then
    GNEZZConexao := Self.Create;

  Result := GNEZZConexao;
end;
end.
