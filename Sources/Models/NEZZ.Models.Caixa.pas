unit NEZZ.Models.Caixa;

interface

uses
  NEZZ.Services.Query,
  Data.DB,
  BCrypt;

type
  iNEZZModelsCaixa = interface
    ['{AE2B68B5-54CD-43B8-8F3E-F531E7A2C335}']

    // CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsCaixa;

    //GETs
    function Id: Integer; overload;
    function Dinheiro: Float32; overload;
    function DataAbertura: TDate; overload;
    function DataFechamento: TDate; overload;
    function idUsuario: Integer; overload;
    function Status: Integer; overload;

    //SETs
    function Id(AValue: Integer): iNEZZModelsCaixa; overload;
    function Dinheiro(AValue: Float32): iNEZZModelsCaixa; overload;
    function DataAbertura(AValue: TDate): iNEZZModelsCaixa; overload;
    function DataFechamento(AValue: TDate): iNEZZModelsCaixa; overload;
    function idUsuario(AValue: Integer): iNEZZModelsCaixa; overload;
    function Status(AValue: Integer): iNEZZModelsCaixa; overload;

    //A합ES
    function Inserir: iNEZZModelsCaixa;
    function Editar: iNEZZModelsCaixa;
    function Deletar: iNEZZModelsCaixa;
    function Salvar: iNEZZModelsCaixa;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsCaixa;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsCaixa;

    // Operadores
    function TemRegistros: Boolean;
  end;

  TNEZZModelsCaixa = class(TInterfacedObject, iNEZZModelsCaixa)

  private
    FNEZZServicesCaixa: iNEZZServicesCadastrar;
  public
    constructor Create;
    destructor Destroy; override;

    class function New: iNEZZModelsCaixa;

    // CONFIGURA합ES
    function CampoChave(AValue: string): iNEZZModelsCaixa;

    //GETs
    function Id: Integer; overload;
    function Dinheiro: Float32; overload;
    function DataAbertura: TDate; overload;
    function DataFechamento: TDate; overload;
    function idUsuario: Integer; overload;
    function Status: Integer; overload;

    //SETs
    function Id(AValue: Integer): iNEZZModelsCaixa; overload;
    function Dinheiro(AValue: Float32): iNEZZModelsCaixa; overload;
    function DataAbertura(AValue: TDate): iNEZZModelsCaixa; overload;
    function DataFechamento(AValue: TDate): iNEZZModelsCaixa; overload;
    function idUsuario(AValue: Integer): iNEZZModelsCaixa; overload;
    function Status(AValue: Integer): iNEZZModelsCaixa; overload;

    //A합ES
    function Inserir: iNEZZModelsCaixa;
    function Editar: iNEZZModelsCaixa;
    function Deletar: iNEZZModelsCaixa;
    function Salvar: iNEZZModelsCaixa;
    function Filtrar(ACampo: string; AValor: Variant): iNEZZModelsCaixa;
    function DataSource(var ADataSource: TDataSource): iNEZZModelsCaixa;

    // Operadores
    function TemRegistros: Boolean;
  end;

implementation

{ TNEZZModelsUsuario }

function TNEZZModelsCaixa.CampoChave(AValue: string): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.CampoChave(AValue);
end;

constructor TNEZZModelsCaixa.Create;
begin
  FNEZZServicesCaixa := TNEZZServicesCadastrar
    .New
    .Gerador('GEN_CAIXA_ABRIR_ID')
    .CampoChave('ID')
    .Tabela('CAIXA_ABRIR');
end;

function TNEZZModelsCaixa.DataAbertura: TDate;
begin
  Result := FNEZZServicesCaixa.Campo('DATA_ABERTURA').AsDateTime;
end;

function TNEZZModelsCaixa.DataAbertura(AValue: TDate): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Campo('DATA_ABERTURA' , AValue);
end;

function TNEZZModelsCaixa.DataFechamento(AValue: TDate): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Campo('DATA_FECHAMENTO' , AValue);
end;

function TNEZZModelsCaixa.DataFechamento: TDate;
begin
  Result := FNEZZServicesCaixa.Campo('DATA_FECHAMENTO').AsDateTime;
end;

function TNEZZModelsCaixa.DataSource(
  var ADataSource: TDataSource): iNEZZModelsCaixa;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZServicesCaixa.DataSet;
end;

function TNEZZModelsCaixa.Deletar: iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Deletar;
end;

destructor TNEZZModelsCaixa.Destroy;
begin

  inherited;
end;

function TNEZZModelsCaixa.Dinheiro: Float32;
begin
  Result := FNEZZServicesCaixa.Campo('DINHEIRO').AsFloat;
end;

function TNEZZModelsCaixa.Dinheiro(AValue: Float32): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Campo('DINHEIRO' , AValue);
end;

function TNEZZModelsCaixa.Editar: iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Editar;
end;

function TNEZZModelsCaixa.Filtrar(ACampo: string;
  AValor: Variant): iNEZZModelsCaixa;
begin
  Result := Self;

  FNEZZServicesCaixa
    .Filtrar(ACampo, AValor)
    .Abrir;
end;

function TNEZZModelsCaixa.Id(AValue: Integer): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Campo('ID' , AValue);
end;

function TNEZZModelsCaixa.Id: Integer;
begin
  Result := FNEZZServicesCaixa.Campo('ID').AsInteger;
end;

function TNEZZModelsCaixa.idUsuario(AValue: Integer): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Campo('ID_USUARIO' , AValue);
end;

function TNEZZModelsCaixa.idUsuario: Integer;
begin
  Result := FNEZZServicesCaixa.Campo('ID_USUARIO').AsInteger;
end;

function TNEZZModelsCaixa.Inserir: iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Inserir;
end;

class function TNEZZModelsCaixa.New: iNEZZModelsCaixa;
begin
  Result := Self.Create;
end;

function TNEZZModelsCaixa.Salvar: iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Salvar;
end;

function TNEZZModelsCaixa.Status(AValue: Integer): iNEZZModelsCaixa;
begin
  Result := Self;
  FNEZZServicesCaixa.Campo('STATUS' , AValue);
end;

function TNEZZModelsCaixa.Status: Integer;
begin
  Result := FNEZZServicesCaixa.Campo('STATUS').AsInteger;
end;

function TNEZZModelsCaixa.TemRegistros: Boolean;
begin
  Result := FNEZZServicesCaixa.TemRegistros;
end;

end.
