unit NEZZ.Factory.Fornecedor;

interface

uses
  Data.DB,
  NEZZ.Services.Query,
  NEZZ.Models.Fornecedor,
  BCrypt,
  NEZZ.Controllers.Sessao;

type
  NEZZFornecedorLOG = procedure(AValue : string) of object;

  iNEZZFactoryFornecedor = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function ExisteFornecedor(ACNPJ : string): Boolean;
    function AdicionarFornecedor(ANome,ARazao_social,ACNPJ,
      ABairro,AEndereco,ATelefone,ACidade,ACEP : string): iNEZZFactoryFornecedor;
    function DeletarFornecedor(ANome : Integer): iNEZZFactoryFornecedor;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryFornecedor;
    function AtualizarFornecedor(ANome : string): iNEZZFactoryFornecedor;
    function FiltrarFornecedor(ANome : string): iNEZZFactoryFornecedor;

    function ListarFornecedor: iNEZZFactoryFornecedor;
  end;

  TNEZZFactoryFronecedor = class(TInterfacedObject, iNEZZFactoryFornecedor)
    private
      FNEZZSessao : iNEZZControllerSessao;
      FNEZZFornecedor : iNEZZServicesCadastrar;
    public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryFornecedor;

    function ExisteFornecedor(ACNPJ : string): Boolean;
    function AdicionarFornecedor(ANome,ARazao_social,ACNPJ,ABairro,
      AEndereco,ATelefone,ACidade,ACEP : string): iNEZZFactoryFornecedor;
    function DeletarFornecedor(ANome : Integer): iNEZZFactoryFornecedor;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryFornecedor;
    function AtualizarFornecedor(ANome : string): iNEZZFactoryFornecedor;
    function FiltrarFornecedor(ANome : string): iNEZZFactoryFornecedor;

    function ListarFornecedor: iNEZZFactoryFornecedor;
  end;

implementation

{ TNEZZFactoryFronecedor }

function TNEZZFactoryFronecedor.AdicionarFornecedor(
  ANome,
  ARazao_social,
  ACNPJ,
  ABairro,
  AEndereco,
  ATelefone,
  ACidade,
  ACEP: string): iNEZZFactoryFornecedor;
begin
  Result := Self;

  TNEZZModelsFornecedor
    .New
    .Inserir
    .Nome(ANome)
    .Razao_Social(ARazao_social)
    .CNPJ(ACNPJ)
    .Bairro(ABairro)
    .Endereco(AEndereco)
    .Telefone(ATelefone)
    .Cidade(ACidade)
    .CEP(ACEP)
    .Status(0)
    .Salvar;
end;

function TNEZZFactoryFronecedor.AtualizarFornecedor(
  ANome: string): iNEZZFactoryFornecedor;
begin
  Result := Self;

  TNEZZModelsFornecedor
    .New
    .Filtrar('NOME' , ANome)
    .Editar
    .Salvar;
end;

constructor TNEZZFactoryFronecedor.Create;
begin
  FNEZZFornecedor := TNEZZServicesCadastrar
    .New
    .Apelido('ID', '#')
    .Apelido('NOME', 'FORNECEDOR')
    .Apelido('RAZAO_SOCIAL', 'RAZÃO SOCIAL')
    .Apelido('TELEFONE', 'CONTATO')
    .Apelido('CEP', 'CEP')
    .Apelido('STATUS', 'STATUS')
    .Apelido('CIDADE', 'CIDADE')
    .Apelido('BAIRRO', 'BAIRRO')
    .Apelido('ENDERECO', 'ENDERECO')
    .Apelido('CNPJ', 'CNPJ')
    .SQL('  SELECT')
    .SQL('    F.ID,')
    .SQL('    F.NOME,')
    .SQL('    F.RAZAO_SOCIAL,')
    .SQL('    F.TELEFONE,')
    .SQL('    F.CEP,')
    .SQL('    DECODE(')
    .SQL('      F.STATUS,')
    .SQL('      0, ''ATIVO'',')
    .SQL('      1, ''DESATIVADO'',')
    .SQL('      ''ERRONOCODIGO''')
    .SQL('    ) AS STATUS,')
    .SQL('    F.CIDADE,')
    .SQL('    F.BAIRRO,')
    .SQL('    F.ENDERECO,')
    .SQL('    F.CNPJ')
    .SQL('  FROM')
    .SQL('    FORNECEDOR F')
end;

function TNEZZFactoryFronecedor.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryFornecedor;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZFornecedor.DataSet;
end;

function TNEZZFactoryFronecedor.DeletarFornecedor(
  ANome: Integer): iNEZZFactoryFornecedor;
begin
  Result := Self;

  TNEZZModelsFornecedor
    .New
    .Filtrar('NOME' , ANome)
    .Apagar
    .Salvar;
end;

destructor TNEZZFactoryFronecedor.Destroy;
begin
  inherited;
end;

function TNEZZFactoryFronecedor.ExisteFornecedor(ACNPJ: string): Boolean;
begin
   Result := TNEZZServicesCadastrar
    .New
    .SQLLimpar
    .SQL('SELECT')
    .SQL('  COUNT(*) AS QTD')
    .SQL('FROM')
    .SQL('  FORNECEDOR F')
    .SQL('WHERE')
    .SQL('  UPPER(F.CNPJ) = UPPER(:CNPJ)')
    .Parametro('CNPJ', ACNPJ)
    .Abrir
    .Campo('QTD')
    .AsInteger <> 0
end;

function TNEZZFactoryFronecedor.FiltrarFornecedor(
  ANome: string): iNEZZFactoryFornecedor;
begin
  Result := Self;

  FNEZZFornecedor
    .Filtrar('NOME' , ANome)
    .Abrir;
end;

function TNEZZFactoryFronecedor.ListarFornecedor: iNEZZFactoryFornecedor;
begin
  Result := Self;

  FNEZZFornecedor
    .Abrir;
end;

class function TNEZZFactoryFronecedor.New: iNEZZFactoryFornecedor;
begin
  Result := Self.Create;
end;

end.
