unit NEZZ.Models.Vendas.Produtos;

interface

uses
  NEZZ.Services.Query,
  Data.DB;

type
  iNEZZModelsVendasProdutos = interface
    ['{1E0B422C-96FA-4420-8185-8B2E3ECB2391}']
      //CONFIGURA합ES
      function CampoChave(AValue: string): iNEZZModelsVendasProdutos;

      //GETs
      function num_pedido: integer; overload;
      function item: string; overload;
      function quantidade: string; overload;
      function valor_produto: string; overload;
      function desconto: string; overload;
      function id_produto: Integer; overload;

      //SETs
      function num_pedido(AValue: Integer): iNEZZModelsVendasProdutos; overload;
      function item(AValue: string): iNEZZModelsVendasProdutos; overload;
      function quantidade(AValue: string): iNEZZModelsVendasProdutos; overload;
      function valor_produto(AValue: string): iNEZZModelsVendasProdutos; overload;
      function desconto(AValue: string): iNEZZModelsVendasProdutos; overload;
      function id_produto(AValue: Integer): iNEZZModelsVendasProdutos; overload;

      //A합ES
      function Inserir: iNEZZModelsVendasProdutos;
      function Editar: iNEZZModelsVendasProdutos;
      function Apagar: iNEZZModelsVendasProdutos;
      function Salvar: iNEZZModelsVendasProdutos;
      function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsVendasProdutos;
      function DataSource(var ADataSource: TDataSource): iNEZZModelsVendasProdutos;
  end;

  TNEZZModelsVendasProdutos = class(TInterfacedObject, iNEZZModelsVendasProdutos)
    private
      FNEZZVendaProdutos: iNEZZServicesCadastrar;
    public
      constructor Create;
      destructor Destroy;

      class function New: iNEZZModelsVendasProdutos;
      //CONFIGURA합ES
      function CampoChave(AValue: string): iNEZZModelsVendasProdutos;

      //GETs
      function num_pedido: integer; overload;
      function item: string; overload;
      function quantidade: string; overload;
      function valor_produto: string; overload;
      function desconto: string; overload;
      function id_produto: Integer; overload;

      //SETs
      function num_pedido(AValue: Integer): iNEZZModelsVendasProdutos; overload;
      function item(AValue: string): iNEZZModelsVendasProdutos; overload;
      function quantidade(AValue: string): iNEZZModelsVendasProdutos; overload;
      function valor_produto(AValue: string): iNEZZModelsVendasProdutos; overload;
      function desconto(AValue: string): iNEZZModelsVendasProdutos; overload;
      function id_produto(AValue: Integer): iNEZZModelsVendasProdutos; overload;

      //A합ES
      function Inserir: iNEZZModelsVendasProdutos;
      function Editar: iNEZZModelsVendasProdutos;
      function Apagar: iNEZZModelsVendasProdutos;
      function Salvar: iNEZZModelsVendasProdutos;
      function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsVendasProdutos;
      function DataSource(var ADataSource: TDataSource): iNEZZModelsVendasProdutos;
  end;

implementation

{ TNEZZViewsVendasProdutos }

function TNEZZModelsVendasProdutos.Apagar: iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Deletar;
end;

function TNEZZModelsVendasProdutos.CampoChave(
  AValue: string): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.CampoChave(AValue);
end;

constructor TNEZZModelsVendasProdutos.Create;
begin
  FNEZZVendaProdutos := TNEZZServicesCadastrar
    .New
    .Gerador('GEN_VENDA_ITEM_ID')
    .CampoChave('NUM_PEDIDO')
    .Tabela('VENDA_ITEM');
end;

function TNEZZModelsVendasProdutos.DataSource(
  var ADataSource: TDataSource): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZVendaProdutos.DataSet;
end;

function TNEZZModelsVendasProdutos.desconto(
  AValue: string): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Campo('DESCONTO', AValue);
end;

function TNEZZModelsVendasProdutos.desconto: string;
begin
  Result := FNEZZVendaProdutos.Campo('DESCONTO').AsString;
end;

destructor TNEZZModelsVendasProdutos.Destroy;
begin

  inherited;
end;

function TNEZZModelsVendasProdutos.Editar: iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Editar;
end;

function TNEZZModelsVendasProdutos.Filtrar(ACampo: string;
  AValor: Variant): iNEZZModelsVendasProdutos;
begin
  Result := Self;

  FNEZZVendaProdutos
    .Filtrar(ACampo , AValor)
    .Abrir;
end;

function TNEZZModelsVendasProdutos.id_produto: Integer;
begin
  Result := FNEZZVendaProdutos.Campo('ID_PRODUTO').AsInteger;
end;

function TNEZZModelsVendasProdutos.id_produto(
  AValue: Integer): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Campo('ID_PRODUTO', AValue);
end;

function TNEZZModelsVendasProdutos.Inserir: iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Inserir;
end;

function TNEZZModelsVendasProdutos.item: string;
begin
  Result := FNEZZVendaProdutos.Campo('ITEM').AsString;
end;

function TNEZZModelsVendasProdutos.item(
  AValue: string): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Campo('ITEM', AValue);
end;

class function TNEZZModelsVendasProdutos.New: iNEZZModelsVendasProdutos;
begin
  Result := Self.Create;
end;

function TNEZZModelsVendasProdutos.num_pedido: integer;
begin
  Result := FNEZZVendaProdutos.Campo('NUM_PEDIDO').AsInteger;
end;

function TNEZZModelsVendasProdutos.num_pedido(
  AValue: Integer): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Campo('NUM_PEDIDO', AValue);
end;

function TNEZZModelsVendasProdutos.quantidade(
  AValue: string): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Campo('QUANTIDADE', AValue);
end;

function TNEZZModelsVendasProdutos.quantidade: string;
begin
    Result := FNEZZVendaProdutos.Campo('QUANTIDADE').AsString;
end;

function TNEZZModelsVendasProdutos.Salvar: iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Salvar;
end;

function TNEZZModelsVendasProdutos.valor_produto: string;
begin
   Result := FNEZZVendaProdutos.Campo('VALOR_PRODUTO').AsString;
end;

function TNEZZModelsVendasProdutos.valor_produto(
  AValue: string): iNEZZModelsVendasProdutos;
begin
  Result := Self;
  FNEZZVendaProdutos.Campo('VALOR_PRODUTO', AValue);
end;

end.
