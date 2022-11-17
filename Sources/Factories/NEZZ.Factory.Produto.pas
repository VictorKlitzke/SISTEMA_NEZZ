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
    function AdicionarProduto(AProduto, AReferencia, ACodBarras, AValorProduto,
      AQuantidade, AValorCusto, AEstoqueAtual, AMarca, AModelo : string): iNEZZFactoryProdutos;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryProdutos;
    function DeletarProduto(AProduto : Integer): iNEZZFactoryProdutos;
    function AtualizarProduto(AProduto : string): iNEZZFactoryProdutos;
    function FiltrarProduto(AProduto : string): iNEZZFactoryProdutos;
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
    function AdicionarProduto(AProduto, AReferencia, ACodBarras, AValorProduto,
      AQuantidade, AValorCusto, AEstoqueAtual, AMarca, AModelo : string): iNEZZFactoryProdutos;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryProdutos;
    function DeletarProduto(AProduto : Integer): iNEZZFactoryProdutos;
    function AtualizarProduto(AProduto : string): iNEZZFactoryProdutos;
    function FiltrarProduto(AProduto : string): iNEZZFactoryProdutos;
  end;

implementation

{ TNEZZFactoryProdutos }

function TNEZZFactoryProdutos.AdicionarProduto(
  AProduto,
  AReferencia,
  ACodBarras,
  AValorProduto,
  AQuantidade,
  AValorCusto,
  AEstoqueAtual,
  AMarca,
  AModelo: string): iNEZZFactoryProdutos;
begin
  Result := Self;

//  FNEZZModelsProduto := TNEZZModelsProdutos
//    .New
//    .Inserir
//    .Produto(AProduto)
//    .Referencia(AReferencia)
//    .Valor_Produto(AValorProduto)
//    .Valor_Custo(AValorCusto)
//    .Marca(AMarca)
//    .Modelo(AModelo)
//    .Quantidade(AQuantidade)
//    .Estoque_Atual(AEstoqueAtual)
//    .Cod_Barras(ACodBarras)
//    .Salvar;

end;

function TNEZZFactoryProdutos.AtualizarProduto(
  AProduto: string): iNEZZFactoryProdutos;
begin
  Result := Self;
end;

constructor TNEZZFactoryProdutos.Create;
begin

end;

function TNEZZFactoryProdutos.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryProdutos;
begin
  Result := Self;
end;

function TNEZZFactoryProdutos.DeletarProduto(
  AProduto: Integer): iNEZZFactoryProdutos;
begin
  Result := Self;
end;

destructor TNEZZFactoryProdutos.Destroy;
begin

end;

function TNEZZFactoryProdutos.FiltrarProduto(
  AProduto: string): iNEZZFactoryProdutos;
begin
  Result := Self;
end;

class function TNEZZFactoryProdutos.New: iNEZZFactoryProdutos;
begin

end;

function TNEZZFactoryProdutos.ProdutoExiste(AProduto: string): Boolean;
begin
//
end;

end.
