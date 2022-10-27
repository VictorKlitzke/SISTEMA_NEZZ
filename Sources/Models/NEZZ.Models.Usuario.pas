unit NEZZ.Models.Usuario;

interface

uses
  NEZZ.Services.Query,
  Data.DB, BCrypt;

type
  iNEZZModelsUsuario = interface
    ['{AE2B68B5-54CD-43B8-8F3E-F531E7A2C335}']

    // CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsUsuario;

    //GETs
    function Id: Integer; overload;
    function Nome: string; overload;
    function Senha: string; overload;
    function Login: string; overload;
    function Status: Integer; overload;
    function Cidade: string; overload;
    function Endereco: string; overload;
    function Bairro: string; overload;
    function CEP: string; overload;

    //SETs
    function Id(AValue: Integer): iNEZZModelsUsuario; overload;
    function Nome(AValue: string): iNEZZModelsUsuario; overload;
    function Senha(AValue: string): iNEZZModelsUsuario; overload;
    function Login(AValue: string): iNEZZModelsUsuario; overload;
    function Status(AValue: Integer): iNEZZModelsUsuario; overload;
    function Cidade(AValue: string): iNEZZModelsUsuario; overload;
    function Endereco(AValue: string): iNEZZModelsUsuario; overload;
    function Bairro(AValue: string): iNEZZModelsUsuario; overload;
    function CEP(AValue: string): iNEZZModelsUsuario; overload;

    //A합ES
    function Inserir: iNEZZModelsUsuario;
    function Editar: iNEZZModelsUsuario;
    function Deletar: iNEZZModelsUsuario;
    function Salvar: iNEZZModelsUsuario;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsUsuario;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsUsuario;

    // Operadores
    function TemRegistros: Boolean;
  end;

  TNEZZModelsUsuario = class(TInterfacedObject, iNEZZModelsUsuario)

  private
    FNEZZServicesUsuario: iNEZZServicesCadastrar;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: iNEZZModelsUsuario;

    // CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsUsuario;

    //GETs
    function Id: Integer; overload;
    function Nome: string; overload;
    function Senha: string; overload;
    function Login: string; overload;
    function Status: Integer; overload;
    function Cidade: string; overload;
    function Endereco: string; overload;
    function Bairro: string; overload;
    function CEP: string; overload;

    //SETs
    function Id(AValue: Integer): iNEZZModelsUsuario; overload;
    function Nome(AValue: string): iNEZZModelsUsuario; overload;
    function Senha(AValue: string): iNEZZModelsUsuario; overload;
    function Login(AValue: string): iNEZZModelsUsuario; overload;
    function Status(AValue: Integer): iNEZZModelsUsuario; overload;
    function Cidade(AValue: string): iNEZZModelsUsuario; overload;
    function Endereco(AValue: string): iNEZZModelsUsuario; overload;
    function Bairro(AValue: string): iNEZZModelsUsuario; overload;
    function CEP(AValue: string): iNEZZModelsUsuario; overload;

    //A합ES
    function Inserir: iNEZZModelsUsuario;
    function Editar: iNEZZModelsUsuario;
    function Deletar: iNEZZModelsUsuario;
    function Salvar: iNEZZModelsUsuario;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsUsuario;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsUsuario;

    // Operadores
    function TemRegistros: Boolean;
  end;

implementation

{ TNEZZModelsUsuario }

function TNEZZModelsUsuario.Bairro(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('BAIRRO' , AValue);
end;

function TNEZZModelsUsuario.Bairro: string;
begin
  Result := FNEZZServicesUsuario.Campo('BAIRRO').AsString;
end;

function TNEZZModelsUsuario.CampoChave(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.CampoChave(AValue);
end;

function TNEZZModelsUsuario.CEP: string;
begin
  Result := FNEZZServicesUsuario.Campo('CEP').AsString;
end;

function TNEZZModelsUsuario.CEP(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('CEP' , AValue);
end;

function TNEZZModelsUsuario.Cidade: string;
begin
  Result := FNEZZServicesUsuario.Campo('CIDADE').AsString;
end;

function TNEZZModelsUsuario.Cidade(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('CIDADE' , AValue);
end;

constructor TNEZZModelsUsuario.Create;
begin
  FNEZZServicesUsuario := TNEZZServicesCadastrar
    .New
    .Gerador('GEN_USUARIOS_ID')
    .CampoChave('ID')
    .Tabela('USUARIOS');
end;

function TNEZZModelsUsuario.DataSource(
  var ADataSource: TDataSource): iNEZZModelsUsuario;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZServicesUsuario.DataSet;
end;

function TNEZZModelsUsuario.Deletar: iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Deletar;
end;

destructor TNEZZModelsUsuario.Destroy;
begin

  inherited;
end;

function TNEZZModelsUsuario.Editar: iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Editar;
end;

function TNEZZModelsUsuario.Endereco: string;
begin
  Result := FNEZZServicesUsuario.Campo('ENDERECO').AsString;
end;

function TNEZZModelsUsuario.Endereco(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('ENDERECO' , AValue);
end;

function TNEZZModelsUsuario.Filtrar(ACampo: string;
  AValor: Variant): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario
    .Filtrar(ACampo , AValor)
    .Abrir;
end;

function TNEZZModelsUsuario.Id(AValue: Integer): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('ID' , AValue);
end;

function TNEZZModelsUsuario.Id: Integer;
begin
  Result := FNEZZServicesUsuario.Campo('ID').AsInteger;
end;

function TNEZZModelsUsuario.Inserir: iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Inserir;
end;

function TNEZZModelsUsuario.Login: string;
begin
  Result := FNEZZServicesUsuario.Campo('LOGIN').AsString;
end;

function TNEZZModelsUsuario.Login(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('LOGIN' , AValue);
end;

class function TNEZZModelsUsuario.New: iNEZZModelsUsuario;
begin
  Result := Self.Create;
end;

function TNEZZModelsUsuario.Nome: string;
begin
  Result := FNEZZServicesUsuario.Campo('NOME').AsString;
end;

function TNEZZModelsUsuario.Nome(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('NOME' , AValue);
end;

function TNEZZModelsUsuario.Salvar: iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Salvar;
end;

function TNEZZModelsUsuario.Senha: string;
begin
  Result := FNEZZServicesUsuario.Campo('SENHA').AsString;
end;

function TNEZZModelsUsuario.Senha(AValue: string): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('SENHA' , TBCrypt.GenerateHash(AValue));
end;

function TNEZZModelsUsuario.Status: Integer;
begin
  Result := FNEZZServicesUsuario.Campo('STATUS').AsInteger;
end;

function TNEZZModelsUsuario.Status(AValue: integer): iNEZZModelsUsuario;
begin
  Result := Self;
  FNEZZServicesUsuario.Campo('STATUS' , AValue);
end;

function TNEZZModelsUsuario.TemRegistros: Boolean;
begin
  Result := FNEZZServicesUsuario.TemRegistros;
end;

end.
