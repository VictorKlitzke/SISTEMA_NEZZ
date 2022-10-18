unit NEZZ.Models.Cliente;

interface

uses
  NEZZ.Services.Query,
  Data.DB;

type
  iNEZZModelsCliente = interface
    ['{AE2B68B5-54CD-43B8-8F3E-F531E7A2C335}']

    //CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsCliente;

    //GETs
    function id: integer; overload;
    function Nome: string; overload;
    function Razao: string; overload;
    function Contato: string; overload;
    function CEP: string; overload;
    function Email: string; overload;
    function Bairro: string; overload;
    function Endereco: string; overload;
    function Cidade: string; overload;
    function CPF: string; overload;

    //SETs
    function ID(AValue: Integer): iNEZZModelsCliente; overload;
    function Nome(AValue: string): iNEZZModelsCliente; overload;
    function Razao(AValue: string): iNEZZModelsCliente; overload;
    function Contato(AValue: string): iNEZZModelsCliente; overload;
    function CEP(AValue: string): iNEZZModelsCliente; overload;
    function Email(AValue: string): iNEZZModelsCliente; overload;
    function Bairro(AValue: string): iNEZZModelsCliente; overload;
    function Endereco(AValue: string): iNEZZModelsCliente; overload;
    function Cidade(AValue: string): iNEZZModelsCliente; overload;
    function CPF(AValue: string): iNEZZModelsCliente; overload;

    //A합ES
    function Inserir: iNEZZModelsCliente;
    function Editar: iNEZZModelsCliente;
    function Apagar: iNEZZModelsCliente;
    function Salvar: iNEZZModelsCliente;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsCliente;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsCliente;

  end;

  TNEZZModelsCliente = class(TInterfacedObject, iNEZZModelsCliente)
  private
  FNEZZCliente: iNEZZServicesCadastrar;

  public
    constructor Create;
    destructor Destroy; override;

    class function New: iNEZZModelsCliente;

    //CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsCliente;

    //GETs
    function id: integer; overload;
    function Nome: string; overload;
    function Razao: string; overload;
    function Contato: string; overload;
    function CEP: string; overload;
    function Email: string; overload;
    function Bairro: string; overload;
    function Endereco: string; overload;
    function Cidade: string; overload;
    function CPF: string; overload;

    //SETs
    function ID(AValue: Integer): iNEZZModelsCliente; overload;
    function Nome(AValue: string): iNEZZModelsCliente; overload;
    function Razao(AValue: string): iNEZZModelsCliente; overload;
    function Contato(AValue: string): iNEZZModelsCliente; overload;
    function CEP(AValue: string): iNEZZModelsCliente; overload;
    function Email(AValue: string): iNEZZModelsCliente; overload;
    function Bairro(AValue: string): iNEZZModelsCliente; overload;
    function Endereco(AValue: string): iNEZZModelsCliente; overload;
    function Cidade(AValue: string): iNEZZModelsCliente; overload;
    function CPF(AValue: string): iNEZZModelsCliente; overload;

    //A합ES
    function Inserir: iNEZZModelsCliente;
    function Editar: iNEZZModelsCliente;
    function Apagar: iNEZZModelsCliente;
    function Salvar: iNEZZModelsCliente;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsCliente;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsCliente;
  end;

implementation

{ TNEZZModelsCliente }

function TNEZZModelsCliente.Apagar: iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Deletar;
end;

function TNEZZModelsCliente.Bairro(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('BAIRRO', AValue);
end;

function TNEZZModelsCliente.Bairro: string;
begin
  Result := FNEZZCliente.Campo('BAIRRO').AsString;
end;

function TNEZZModelsCliente.CampoChave(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.CampoChave(AValue);
end;

function TNEZZModelsCliente.CEP: string;
begin
  Result := FNEZZCliente.Campo('CEP').AsString;
end;

function TNEZZModelsCliente.CEP(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('CEP', AValue);
end;

function TNEZZModelsCliente.Cidade(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('CIDADE', AValue);
end;

function TNEZZModelsCliente.Cidade: string;
begin
  Result := FNEZZCliente.Campo('CIDADE').AsString;
end;

function TNEZZModelsCliente.Contato(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('CONTATO', AValue);
end;

function TNEZZModelsCliente.Contato: string;
begin
  Result := FNEZZCliente.Campo('CONTATO').AsString;
end;

function TNEZZModelsCliente.CPF(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('CPF', AValue);
end;

function TNEZZModelsCliente.CPF: string;
begin
  Result := FNEZZCliente.Campo('CPF').AsString;
end;

constructor TNEZZModelsCliente.Create;
begin
  FNEZZCliente := TNEZZServicesCadastrar
    .New
    .Gerador('GEN_CLIENTES_ID')
    .CampoChave('ID')
    .Tabela('CLIENTES');
end;

function TNEZZModelsCliente.DataSource(
  var ADataSource: TDataSource): iNEZZModelsCliente;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZCliente.DataSet;
end;

destructor TNEZZModelsCliente.Destroy;
begin

  inherited;
end;

function TNEZZModelsCliente.Editar: iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Editar;
end;

function TNEZZModelsCliente.Email: string;
begin
  Result := FNEZZCliente.Campo('EMAIL').AsString;
end;

function TNEZZModelsCliente.Email(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('EMAIL', AValue);
end;

function TNEZZModelsCliente.Endereco(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('ENDERECO', AValue);
end;

function TNEZZModelsCliente.Endereco: string;
begin
  Result := FNEZZCliente.Campo('ENDERECO').AsString;
end;

function TNEZZModelsCliente.Filtrar(ACampo: string;
  AValor: Variant): iNEZZModelsCliente;
begin
  Result := Self;

  FNEZZCliente
    .Filtrar(ACampo, AValor)
    .Abrir;
end;

function TNEZZModelsCliente.id(AValue: Integer): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('ID', AValue);
end;

function TNEZZModelsCliente.id: integer;
begin
  Result := FNEZZCliente.Campo('ID').AsInteger;
end;

function TNEZZModelsCliente.Inserir: iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Inserir;
end;

class function TNEZZModelsCliente.New: iNEZZModelsCliente;
begin
  Result := Self.Create;
end;

function TNEZZModelsCliente.Nome: string;
begin
  Result := FNEZZCliente.Campo('NOME').AsString;
end;

function TNEZZModelsCliente.Nome(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('NOME', AValue);
end;

function TNEZZModelsCliente.Razao(AValue: string): iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Campo('RAZAO_SOCIAL', AValue);
end;

function TNEZZModelsCliente.Razao: string;
begin
  Result := FNEZZCliente.Campo('RAZAO_SOCIAL').AsString;
end;

function TNEZZModelsCliente.Salvar: iNEZZModelsCliente;
begin
  Result := Self;
  FNEZZCliente.Salvar;
end;
end.
