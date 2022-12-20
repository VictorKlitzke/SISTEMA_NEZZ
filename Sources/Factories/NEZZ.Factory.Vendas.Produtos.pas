unit NEZZ.Factory.Vendas.Produtos;

interface

uses
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Services.Query,
  BCrypt,
  NEZZ.Models.Cliente;

type
  iNEZZFactoryVendasProdutos = interface
    ['{0D7CF9A0-003A-414E-B1D7-FFC945DA80D1}']

      function FinalizarVenda(AnumPedido: Integer): iNEZZFactoryVendasProdutos;
      function ListarVendaProdutos: iNEZZFactoryVendasProdutos;
      function DataSource(var ADataSource : TDataSource): iNEZZFactoryVendasProdutos;
      function FiltrarVendasProdutos(AProduto: string): iNEZZFactoryVendasProdutos;
  end;

  TNEZZFactoryVendasProdutos = class(TInterfacedObject, iNEZZFactoryVendasProdutos)
    private
      FNEZZSesao : iNEZZControllerSessao;
      FNEZZVendaProdutos: iNEZZServicesCadastrar;
    public
      constructor Create;
      destructor Destroy;

      class function New: iNEZZFactoryVendasProdutos;

      function FinalizarVenda(AnumPedido: Integer): iNEZZFactoryVendasProdutos;
      function ListarVendaProdutos: iNEZZFactoryVendasProdutos;
      function DataSource(var ADataSource : TDataSource): iNEZZFactoryVendasProdutos;
      function FiltrarVendasProdutos(AProduto: string): iNEZZFactoryVendasProdutos;

  end;

implementation

{ TNEZZFactoryVendasProdutos }

constructor TNEZZFactoryVendasProdutos.Create;
begin
  FNEZZVendaProdutos := TNEZZServicesCadastrar
    .New
    .Apelido('ID_PRODUTO', '#')
    .Apelido('PRODUTO', 'PRODUTO')
    .Apelido('VALOR_PRODUTO', 'VALOR PRODUTO')
    .Apelido('QUANTIDADE', 'QUANTIDADE')
    .Apelido('COD_BARRAS', 'CODIGO DE BARRAS')
    .SQL('  SELECT')
    .SQL('    VI.NUM_PEDIDO,')
    .SQL('    VI.ITEM,')
    .SQL('    VI.VALOR_PRODUTO,')
    .SQL('    VI.DESCONTO,')
    .SQL('    P.ID AS ID_PRODUTO,')
    .SQL('    P.PRODUTO,')
    .SQL('    P.VALOR_PRODUTO,')
    .SQL('    P.QUANTIDADE,')
    .SQL('    P.COD_BARRAS')
    .SQL('  FROM')
    .SQL('    VENDA_ITEM VI')
    .SQL('    JOIN PRODUTOS P ON P.ID = VI.ID_PRODUTO')
end;

function TNEZZFactoryVendasProdutos.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryVendasProdutos;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZVendaProdutos.DataSet;
end;

destructor TNEZZFactoryVendasProdutos.Destroy;
begin

end;

function TNEZZFactoryVendasProdutos.FiltrarVendasProdutos(
  AProduto: string): iNEZZFactoryVendasProdutos;
begin
  Result := Self;

  FNEZZVendaProdutos
    .Filtrar('PRODUTO', AProduto)
    .Abrir
end;

function TNEZZFactoryVendasProdutos.FinalizarVenda(
  AnumPedido: Integer): iNEZZFactoryVendasProdutos;
begin

end;

function TNEZZFactoryVendasProdutos.ListarVendaProdutos: iNEZZFactoryVendasProdutos;
begin
  Result := Self;

  FNEZZVendaProdutos
    .Abrir;
end;

class function TNEZZFactoryVendasProdutos.New: iNEZZFactoryVendasProdutos;
begin
  Result := Self.Create;
end;

end.
