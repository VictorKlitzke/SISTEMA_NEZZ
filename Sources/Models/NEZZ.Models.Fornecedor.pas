unit NEZZ.Models.Fornecedor;

interface

uses
  NEZZ.Services.Query,
  Data.DB;

type
  iNEZZModelsFornecedor = interface
    ['{AE2B68B5-54CD-43B8-8F3E-F531E7A2C335}']
    function CampoChave(AValue: string): iNEZZModelsFornecedor;

    //GETs
    function ID : Integer; overload;
    function Nome : string; overload;
    function Razao_Social : string; overload;
    function Telefone : string; overload;
    function Cidade : string; overload;
    function Endereco : string; overload;
    function Bairro : string; overload;
    function Status : integer; overload;
    function CNPJ : string; overload;
    function CEP : string; overload;

    //SETs
    function ID(AValue: Integer): iNEZZModelsFornecedor; overload;
    function Nome(AValue: string): iNEZZModelsFornecedor; overload;
    function Razao_Social(AValue: string): iNEZZModelsFornecedor; overload;
    function Telefone(AValue: string): iNEZZModelsFornecedor; overload;
    function CEP(AValue: string): iNEZZModelsFornecedor; overload;
    function Status(AValue: Integer): iNEZZModelsFornecedor; overload;
    function Bairro(AValue: string): iNEZZModelsFornecedor; overload;
    function Endereco(AValue: string): iNEZZModelsFornecedor; overload;
    function Cidade(AValue: string): iNEZZModelsFornecedor; overload;
    function CNPJ(AValue: string): iNEZZModelsFornecedor; overload;


    //AÇÕES
    function Inserir: iNEZZModelsFornecedor;
    function Editar: iNEZZModelsFornecedor;
    function Apagar: iNEZZModelsFornecedor;
    function Salvar: iNEZZModelsFornecedor;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsFornecedor;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsFornecedor;
  end;

  TNEZZModelsFornecedor = class(TInterfacedObject, iNEZZModelsFornecedor)
    private
      FNEZZFornecedor : iNEZZServicesCadastrar;
    public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZModelsFornecedor;

    function CampoChave(AValue: string): iNEZZModelsFornecedor;

    //GETs
    function ID : Integer; overload;
    function Nome : string; overload;
    function Razao_Social : string; overload;
    function Telefone : string; overload;
    function Cidade : string; overload;
    function Endereco : string; overload;
    function Bairro : string; overload;
    function Status : integer; overload;
    function CNPJ : string; overload;
    function CEP : string; overload;

    //SETs
    function ID(AValue: Integer): iNEZZModelsFornecedor; overload;
    function Nome(AValue: string): iNEZZModelsFornecedor; overload;
    function Razao_Social(AValue: string): iNEZZModelsFornecedor; overload;
    function Telefone(AValue: string): iNEZZModelsFornecedor; overload;
    function CEP(AValue: string): iNEZZModelsFornecedor; overload;
    function Status(AValue: Integer): iNEZZModelsFornecedor; overload;
    function Bairro(AValue: string): iNEZZModelsFornecedor; overload;
    function Endereco(AValue: string): iNEZZModelsFornecedor; overload;
    function Cidade(AValue: string): iNEZZModelsFornecedor; overload;
    function CNPJ(AValue: string): iNEZZModelsFornecedor; overload;


    //AÇÕES
    function Inserir: iNEZZModelsFornecedor;
    function Editar: iNEZZModelsFornecedor;
    function Apagar: iNEZZModelsFornecedor;
    function Salvar: iNEZZModelsFornecedor;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsFornecedor;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsFornecedor;
  end;

implementation

{ TNEZZModelsFornecedor }

function TNEZZModelsFornecedor.Apagar: iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Deletar;
end;

function TNEZZModelsFornecedor.Bairro(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('BAIRRO' , AValue);
end;

function TNEZZModelsFornecedor.Bairro: string;
begin
  Result := FNEZZFornecedor.Campo('BAIRRO' ).AsString;
end;

function TNEZZModelsFornecedor.CampoChave(
  AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.CampoChave(AValue);
end;

function TNEZZModelsFornecedor.CEP(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('CEP' , AValue);
end;

function TNEZZModelsFornecedor.CEP: string;
begin
  FNEZZFornecedor.Campo('CEP').AsString;
end;

function TNEZZModelsFornecedor.Cidade(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('CIDADE' , AValue);
end;

function TNEZZModelsFornecedor.Cidade: string;
begin
  FNEZZFornecedor.Campo('CIDADE').AsString;
end;

function TNEZZModelsFornecedor.CNPJ: string;
begin
  FNEZZFornecedor.Campo('CNPJ').AsString;
end;

function TNEZZModelsFornecedor.CNPJ(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('CNPJ' , AValue);
end;

constructor TNEZZModelsFornecedor.Create;
begin
  FNEZZFornecedor := TNEZZServicesCadastrar
    .New
    .Gerador('GEN_FORNECEDOR_ID')
    .CampoChave('ID')
    .Tabela('FORNECEDOR');
end;

function TNEZZModelsFornecedor.DataSource(
  var ADataSource: TDataSource): iNEZZModelsFornecedor;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZFornecedor.DataSet;
end;

destructor TNEZZModelsFornecedor.Destroy;
begin

    inherited;
end;

function TNEZZModelsFornecedor.Editar: iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Editar;
end;

function TNEZZModelsFornecedor.Endereco: string;
begin
  FNEZZFornecedor.Campo('ENDERECO').AsString;
end;

function TNEZZModelsFornecedor.Endereco(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('ENDERECO' , AValue);
end;

function TNEZZModelsFornecedor.Filtrar(ACampo: string;
  AValor: Variant): iNEZZModelsFornecedor;
begin
  Result := Self;

  FNEZZFornecedor
    .Filtrar(ACampo , AValor)
    .Abrir;
end;

function TNEZZModelsFornecedor.ID(AValue: Integer): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('ID' , AValue);
end;

function TNEZZModelsFornecedor.ID: Integer;
begin
  FNEZZFornecedor.Campo('ID').AsInteger;
end;

function TNEZZModelsFornecedor.Inserir: iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Inserir;
end;

class function TNEZZModelsFornecedor.New: iNEZZModelsFornecedor;
begin
  Result := Self.Create;
end;

function TNEZZModelsFornecedor.Nome: string;
begin
  FNEZZFornecedor.Campo('NOME').AsString;
end;

function TNEZZModelsFornecedor.Nome(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('NOME' , AValue);
end;

function TNEZZModelsFornecedor.Razao_Social: string;
begin
  FNEZZFornecedor.Campo('RAZAO_SOCIAL').AsString;
end;

function TNEZZModelsFornecedor.Razao_Social(
  AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('RAZAO_SOCIAL' , AValue);
end;

function TNEZZModelsFornecedor.Salvar: iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Salvar;
end;

function TNEZZModelsFornecedor.Status(AValue: Integer): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('STATUS' , AValue);
end;

function TNEZZModelsFornecedor.Status: integer;
begin
  FNEZZFornecedor.Campo('STATUS').AsInteger;
end;

function TNEZZModelsFornecedor.Telefone: string;
begin
  FNEZZFornecedor.Campo('TELEFONE').AsString;
end;

function TNEZZModelsFornecedor.Telefone(AValue: string): iNEZZModelsFornecedor;
begin
  Result := Self;
  FNEZZFornecedor.Campo('TELEFONE' , AValue);
end;

end.
