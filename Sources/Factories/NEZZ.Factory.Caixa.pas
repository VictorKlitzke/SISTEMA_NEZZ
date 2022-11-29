unit NEZZ.Factory.Caixa;

interface

uses
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Services.Query,
  BCrypt,
  NEZZ.Models.Caixa;

type
  NEZZFactoryCaixaLog = procedure(Value: string) of object;

  iNEZZFactoryCaixa = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function ExisteCaixaAberto(AId: Integer): iNEZZFactoryCaixa;
    function Abrircaixa(ADinheiro : Float32; ADataAbertura : TDate): iNEZZFactoryCaixa;
    function DataSource(var ADataSource : TDataSource): iNEZZFactoryCaixa;
    function FechamentoCaixa(ADinheiro, ADataFechamento : string): iNEZZFactoryCaixa;

    function ListarCaixas: iNEZZFactoryCaixa;

    function Log(AValue: NEZZFactoryCaixaLog): iNEZZFactoryCaixa;
  end;

  TNEZZFactoryCaixa = class(TInterfacedObject ,iNEZZFactoryCaixa)
  private
    FNEZZCaixa: iNEZZServicesCadastrar;
    FNEZZModelsCaixa: iNEZZModelsCaixa;
    FLOG: NEZZFactoryCaixaLog;
    FCaixaUsuario: iNEZZControllerSessao;
  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryCaixa;

    function ExisteCaixaAberto(AId: Integer): iNEZZFactoryCaixa;
    function Abrircaixa(ADinheiro : Float32; ADataAbertura : TDate): iNEZZFactoryCaixa;
    function DataSource(var ADataSource : TDataSource): iNEZZFactoryCaixa;
    function FechamentoCaixa(ADinheiro, ADataFechamento : string): iNEZZFactoryCaixa;

    function ListarCaixas: iNEZZFactoryCaixa;

    function Log(AValue: NEZZFactoryCaixaLog): iNEZZFactoryCaixa;
  end;

implementation

{ TNEZZFactoryCaixa }

function TNEZZFactoryCaixa.Abrircaixa(ADinheiro : Float32; ADataAbertura : TDate): iNEZZFactoryCaixa;
begin
  FNEZZModelsCaixa := TNEZZModelsCaixa
    .New
    .Inserir
    .Dinheiro(ADinheiro)
    .DataAbertura(ADataAbertura)
    .idUsuario(FCaixaUsuario.id)
    .Status(0)
    .Salvar;

    if Assigned(FLOG) then
      FLOG('Funcionando corretamente!');
end;

constructor TNEZZFactoryCaixa.Create;
begin
  FNEZZCaixa := TNEZZServicesCadastrar
    .New
    .Apelido('ID', '#')
    .Apelido('DATA_ABERTURA', 'DATA')
    .Apelido('STATUS_DESC', 'STATUS')
    .SQL('  SELECT')
    .SQL('    C.ID AS ID_CAIXA,,')
    .SQL('    C.DATA_ABERTURA,')
    .SQL('    DECODE(')
    .SQL('      C.STATUS,')
    .SQL('      0, ''ABERTO'',')
    .SQL('      1, ''FECHADO'',')
    .SQL('      ''ERRONOCODIGO''')
    .SQL('    ) AS STATUS_DESC,')
    .SQL('    C.STATUS,')
    .SQL('    U.ID AS ID_USUARIO,')
    .SQL('    U.LOGIN')
    .SQL('  FROM')
    .SQL('    CAIXA_ABRIR C')
    .SQL('    JOIN USUARIOS U ON U.ID = C.ID')
    .SQL('  WHERE')
    .SQL('    C.ID = :ID_CAIXA')
end;

function TNEZZFactoryCaixa.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryCaixa;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZCaixa.DataSet;
end;

destructor TNEZZFactoryCaixa.Destroy;
begin

end;

function TNEZZFactoryCaixa.ExisteCaixaAberto(AId: Integer): iNEZZFactoryCaixa;
begin
//  Result := TNEZZServicesCadastrar
//    .New
//    .SQLLimpar
//    .SQL('SELECT')
//    .SQL('  COUNT(*) AS QTD')
//    .SQL('FROM')
//    .SQL('  CAIXA_ABRIR C')
//    .SQL('WHERE')
//    .SQL('  UPPER(C.ID) = UPPER(:ID)')
//    .Parametro('ID', AId)
//    .Abrir
//    .Campo('QTD')
//    .AsInteger <> 0
end;

function TNEZZFactoryCaixa.FechamentoCaixa(ADinheiro,
  ADataFechamento: string): iNEZZFactoryCaixa;
begin

end;

function TNEZZFactoryCaixa.ListarCaixas: iNEZZFactoryCaixa;
begin
  Result := Self;

  FNEZZCaixa
    .Abrir;
end;

function TNEZZFactoryCaixa.Log(AValue: NEZZFactoryCaixaLog): iNEZZFactoryCaixa;
begin
  Result := Self;
  FLOG := AValue;
end;

class function TNEZZFactoryCaixa.New: iNEZZFactoryCaixa;
begin
  Result := Self.Create;
end;

end.
