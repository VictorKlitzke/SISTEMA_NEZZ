unit NEZZ.Factory.Produto;

interface

uses
  NEZZ.Services.Query,
  NEZZ.Controllers.Sessao,
  Data.DB,
  BCrypt,
  NEZZ.Models.Produto;

type
  NEZZFactoryProdutoLOG = procedure(AValue : string) of object;

  iNEZZFactoryProdutos = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function ProdutoExiste(AProduto : string): Boolean;
    function AdicionarProduto(AProduto, AReferencia, AValorProduto, AValorCusto : string;
      AQuantidade, ACodBarras, AEstoqueAtual : Integer; AMarca, AModelo : string): iNEZZFactoryProdutos;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryProdutos;
    function DeletarProduto(AProduto : Integer): iNEZZFactoryProdutos;
    function AtualizarProduto(AProduto : string): iNEZZFactoryProdutos;
    function FiltrarProduto(AProduto : string): iNEZZFactoryProdutos;
    function ListarProdutos: iNEZZFactoryProdutos;
  end;

  TNEZZFactoryProdutos = class(TInterfacedObject, iNEZZFactoryProdutos)
  private
    FNEZZProduto: iNEZZServicesCadastrar;
    FNEZZModelsProduto: iNEZZModelsProdutos;
  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryProdutos;

    function ProdutoExiste(AProduto : string): Boolean;
    function AdicionarProduto(AProduto, AReferencia, AValorProduto, AValorCusto : string;
      AQuantidade, ACodBarras, AEstoqueAtual : Integer; AMarca, AModelo : string): iNEZZFactoryProdutos;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryProdutos;
    function DeletarProduto(AProduto : Integer): iNEZZFactoryProdutos;
    function AtualizarProduto(AProduto : string): iNEZZFactoryProdutos;
    function FiltrarProduto(AProduto : string): iNEZZFactoryProdutos;
    function ListarProdutos: iNEZZFactoryProdutos;
  end;

implementation

{ TNEZZFactoryProdutos }

function TNEZZFactoryProdutos.AdicionarProduto(
  AProduto, AReferencia, AValorProduto, AValorCusto : string;
  AQuantidade, ACodBarras, AEstoqueAtual : Integer;
  AMarca, AModelo : string): iNEZZFactoryProdutos;
begin
  Result := Self;

  FNEZZModelsProduto := TNEZZModelsProdutos
    .New
    .Inserir
    .Produto(AProduto)
    .Referencia(AReferencia)
    .Valor_Produto(AValorProduto)
    .Valor_Custo(AValorCusto)
    .Marca(AMarca)
    .Modelo(AModelo)
    .Quantidade(AQuantidade)
    .Estoque_Atual(AEstoqueAtual)
    .Cod_Barras(ACodBarras)
    .Salvar;

end;

function TNEZZFactoryProdutos.AtualizarProduto(
  AProduto: string): iNEZZFactoryProdutos;
begin
  Result := Self;
end;

constructor TNEZZFactoryProdutos.Create;
begin

  FNEZZProduto := TNEZZServicesCadastrar
    .New
    .Apelido('ID', '#')
    .Apelido('PRODUTO', 'PRODUTO')
    .Apelido('REFERENCIA', 'REFERENCIA')
    .Apelido('MARCA', 'MARCA')
    .Apelido('MODELO', 'MODELO')
    .Apelido('VALOR_PRODUTO', 'VALOR PRODUTO')
    .Apelido('VALOR_CUSTO', 'VALOR CUSTO')
    .Apelido('ESTOQUE_ATUAL', 'ESTOQUE ATUAL')
    .Apelido('COD_BARRAS', 'CODIGO BARRAS')
    .Apelido('QUANTIDADE', 'QUANTIDADE')
    .SQL('  SELECT')
    .SQL('    P.ID,')
    .SQL('    P.PRODUTO,')
    .SQL('    P.REFERENCIA,')
    .SQL('    P.MARCA,')
    .SQL('    P.MODELO,')
    .SQL('    P.VALOR_PRODUTO,')
    .SQL('    P.VALOR_CUSTO,')
    .SQL('    P.ESTOQUE_ATUAL,')
    .SQL('    P.COD_BARRAS,')
    .SQL('    P.QUANTIDADE')
    .SQL('  FROM')
    .SQL('    PRODUTOS P')
end;

function TNEZZFactoryProdutos.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryProdutos;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZProduto.DataSet;
end;

function TNEZZFactoryProdutos.DeletarProduto(
  AProduto: Integer): iNEZZFactoryProdutos;
begin
  Result := Self;
end;

destructor TNEZZFactoryProdutos.Destroy;
begin

  inherited;
end;

function TNEZZFactoryProdutos.FiltrarProduto(
  AProduto: string): iNEZZFactoryProdutos;
begin
  Result := Self;

  FNEZZProduto
    .Filtrar('PRODUTO', AProduto)
    .Abrir
end;

function TNEZZFactoryProdutos.ListarProdutos: iNEZZFactoryProdutos;
begin
  Result := Self;

  FNEZZProduto
    .Abrir
end;

class function TNEZZFactoryProdutos.New: iNEZZFactoryProdutos;
begin
  Result := Self.Create;
end;

function TNEZZFactoryProdutos.ProdutoExiste(AProduto: string): Boolean;
begin
  Result := TNEZZServicesCadastrar
    .New
    .SQLLimpar
    .SQL('SELECT')
    .SQL('  COUNT(*) AS QTD')
    .SQL('FROM')
    .SQL('  PRODUTOS P')
    .SQL('WHERE')
    .SQL('  UPPER(P.PRODUTO) = UPPER(:PRODUTO)')
    .Parametro('PRODUTO', AProduto)
    .Abrir
    .Campo('QTD')
    .AsInteger <> 0
end;

end.
