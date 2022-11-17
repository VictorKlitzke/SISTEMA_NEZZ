unit NEZZ.Models.Produto;

interface

uses
  NEZZ.Services.Query,
  Data.DB,
  NEZZ.Controllers.Sessao;

type
  iNEZZModelsProdutos = interface
    ['{AE2B68B5-54CD-43B8-8F3E-F531E7A2C335}']

    //CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsProdutos;

    //GETs
    function id: integer; overload;
    function Produto: string; overload;
    function Referencia: string; overload;
    function Cod_Barras: Integer; overload;
    function Valor_Produto: string; overload;
    function Quantidade: Integer; overload;
    function Valor_Custo: string; overload;
    function Estoque_Atual: Integer; overload;
    function Marca: string; overload;
    function Modelo: string; overload;

    //SETs
    function ID(AValue: Integer): iNEZZModelsProdutos; overload;
    function Produto(AValue: string): iNEZZModelsProdutos; overload;
    function Referencia(AValue: string): iNEZZModelsProdutos; overload;
    function Cod_Barras(AValue: Integer): iNEZZModelsProdutos; overload;
    function Valor_Produto(AValue: string): iNEZZModelsProdutos; overload;
    function Quantidade(AValue: Integer): iNEZZModelsProdutos; overload;
    function Valor_Custo(AValue: string): iNEZZModelsProdutos; overload;
    function Estoque_Atual(AValue: Integer): iNEZZModelsProdutos; overload;
    function Marca(AValue: string): iNEZZModelsProdutos; overload;
    function Modelo(AValue: string): iNEZZModelsProdutos; overload;

    //A합ES
    function Inserir: iNEZZModelsProdutos;
    function Editar: iNEZZModelsProdutos;
    function Apagar: iNEZZModelsProdutos;
    function Salvar: iNEZZModelsProdutos;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsProdutos;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsProdutos;
  end;

  TNEZZModelsProdutos = class(TInterfacedObject, iNEZZModelsProdutos)
  private
//    FNEZZSessao: iNEZZControllerSessao;
    FNEZZProdutos: iNEZZServicesCadastrar;

  public
  constructor Create;
  destructor Destroy;

  class function New: iNEZZModelsProdutos;

    //CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsProdutos;

    //GETs
    function id: integer; overload;
    function Produto: string; overload;
    function Referencia: string; overload;
    function Cod_Barras: Integer; overload;
    function Valor_Produto: string; overload;
    function Quantidade: Integer; overload;
    function Valor_Custo: string; overload;
    function Estoque_Atual: Integer; overload;
    function Marca: string; overload;
    function Modelo: string; overload;

    //SETs
    function ID(AValue: Integer): iNEZZModelsProdutos; overload;
    function Produto(AValue: string): iNEZZModelsProdutos; overload;
    function Referencia(AValue: string): iNEZZModelsProdutos; overload;
    function Cod_Barras(AValue: Integer): iNEZZModelsProdutos; overload;
    function Valor_Produto(AValue: string): iNEZZModelsProdutos; overload;
    function Quantidade(AValue: Integer): iNEZZModelsProdutos; overload;
    function Valor_Custo(AValue: string): iNEZZModelsProdutos; overload;
    function Estoque_Atual(AValue: Integer): iNEZZModelsProdutos; overload;
    function Marca(AValue: string): iNEZZModelsProdutos; overload;
    function Modelo(AValue: string): iNEZZModelsProdutos; overload;

    //A합ES
    function Inserir: iNEZZModelsProdutos;
    function Editar: iNEZZModelsProdutos;
    function Apagar: iNEZZModelsProdutos;
    function Salvar: iNEZZModelsProdutos;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsProdutos;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsProdutos;

  end;

implementation

{ TNEZZModelsProdutos }

function TNEZZModelsProdutos.Apagar: iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Deletar;
end;

function TNEZZModelsProdutos.CampoChave(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.CampoChave(AValue);
end;

function TNEZZModelsProdutos.Cod_Barras(AValue: Integer): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('COD_BARRAS' , AValue);
end;

function TNEZZModelsProdutos.Cod_Barras: Integer;
begin
  Result := FNEZZProdutos.Campo('COD_BARRAS').AsInteger;
end;

constructor TNEZZModelsProdutos.Create;
begin
  FNEZZProdutos := TNEZZServicesCadastrar
    .New
    .Gerador('GEN_PRODUTOS_ID')
    .CampoChave('ID')
    .Tabela('PRODUTOS')
end;

function TNEZZModelsProdutos.DataSource(
  var ADataSource: TDataSource): iNEZZModelsProdutos;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZProdutos.DataSet;
end;

destructor TNEZZModelsProdutos.Destroy;
begin

  inherited;
end;

function TNEZZModelsProdutos.Editar: iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Editar;
end;

function TNEZZModelsProdutos.Estoque_Atual(AValue: Integer): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('ESTOQUE_ATUAL' , AValue);
end;

function TNEZZModelsProdutos.Estoque_Atual: Integer;
begin
  Result := FNEZZProdutos.Campo('ESTOQUE_ATUAL').AsInteger;
end;

function TNEZZModelsProdutos.Filtrar(ACampo: string;
  AValor: Variant): iNEZZModelsProdutos;
begin
  Result := Self;

  FNEZZProdutos
    .Filtrar(ACampo , AValor)
    .Abrir;
end;

function TNEZZModelsProdutos.id(AValue: Integer): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('ID' , AValue);
end;

function TNEZZModelsProdutos.id: integer;
begin
  Result := FNEZZProdutos.Campo('ID').AsInteger;
end;

function TNEZZModelsProdutos.Inserir: iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Inserir;
end;

function TNEZZModelsProdutos.Marca: string;
begin
  Result := FNEZZProdutos.Campo('MARCA').AsString;
end;

function TNEZZModelsProdutos.Marca(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('MARCA' , AValue);
end;

function TNEZZModelsProdutos.Modelo(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('MODELO' , AValue);
end;

function TNEZZModelsProdutos.Modelo: string;
begin
  FNEZZProdutos.Campo('MODELO').AsString;
end;

class function TNEZZModelsProdutos.New: iNEZZModelsProdutos;
begin
    Result := Self.Create;
end;

function TNEZZModelsProdutos.Produto(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('PRODUTO' , AValue);
end;

function TNEZZModelsProdutos.Produto: string;
begin
  Result := FNEZZProdutos.Campo('PRODUTO').AsString;
end;

function TNEZZModelsProdutos.Quantidade(AValue: Integer): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('QUANTIDADE' , AValue);
end;

function TNEZZModelsProdutos.Quantidade: Integer;
begin
  Result := FNEZZProdutos.Campo('QUANTIDADE').AsInteger;
end;

function TNEZZModelsProdutos.Referencia: string;
begin
  Result := FNEZZProdutos.Campo('REFERENCIA').AsString;
end;

function TNEZZModelsProdutos.Referencia(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('REFERENCIA' , AValue);
end;

function TNEZZModelsProdutos.Salvar: iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Salvar;
end;

function TNEZZModelsProdutos.Valor_Custo(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('VALOR_CUSTO' , AValue);
end;

function TNEZZModelsProdutos.Valor_Custo: string;
begin
  Result := FNEZZProdutos.Campo('VALOR_CUSTO').AsString;
end;

function TNEZZModelsProdutos.Valor_Produto: string;
begin
  Result := FNEZZProdutos.Campo('VALOR_PRODUTO').AsString;
end;

function TNEZZModelsProdutos.Valor_Produto(AValue: string): iNEZZModelsProdutos;
begin
  Result := Self;
  FNEZZProdutos.Campo('VALOR_PRODUTO' , AValue);
end;

end.
