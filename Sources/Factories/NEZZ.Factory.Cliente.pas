unit NEZZ.Factory.Cliente;

interface

uses
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Services.Query,
  BCrypt, NEZZ.Models.Cliente;

type
  TNEZZFactoryTaskLog = procedure(AValue : string) of object;

  iNEZZFactoryCliente = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function AddCliente(ANome,ARazao,AContato,ACEP,AEmail,ACidade,ABairro,AEndereco,ACPF : string): iNEZZFactoryCliente;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryCliente;
    function FiltrarCliente(ANome : string): iNEZZFactoryCliente;

    function ListarCliente: iNEZZFactoryCliente;

    function Log(AValue: TNEZZFactoryTaskLog): iNEZZFactoryCliente;
  end;

  TNEZZFactoryCliente = class(TInterfacedObject, iNEZZFactoryCliente)
  private
    FNEZZSesao : iNEZZControllerSessao;
    FNEZZCliente: iNEZZServicesCadastrar;
    FNEZZLog: TNEZZFactoryTaskLog;
  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryCliente;

    function AddCliente(ANome,ARazao,AContato,ACEP,AEmail,ACidade,ABairro,AEndereco,ACPF : string): iNEZZFactoryCliente;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryCliente;
    function Log(AValue: TNEZZFactoryTaskLog): iNEZZFactoryCliente ;
    function FiltrarCliente(ANome : string): iNEZZFactoryCliente;

    function ListarCliente: iNEZZFactoryCliente;
  end;

implementation

{ TNEZZFactoryCliente }

function TNEZZFactoryCliente.AddCliente(ANome,
ARazao,
AContato,
ACEP,
AEmail,
ACidade,
ABairro,
AEndereco,
ACPF: string): iNEZZFactoryCliente;
begin
  Result := Self;

  TNEZZModelsCliente
    .New
    .Inserir
    .Nome(ANome)
    .Razao(ARazao)
    .Contato(AContato)
    .CEP(ACEP)
    .Email(AEmail)
    .Bairro(ABairro)
    .Endereco(AEndereco)
    .Cidade(ACidade)
    .CPF(ACPF)
    .Salvar;

  if not Assigned(FNEZZLog) then
    FNEZZLog('LOG Funcionando!');

end;

constructor TNEZZFactoryCliente.Create;
begin
  FNEZZSesao := TNEZZControllerSessao.New;
  FNEZZCliente := TNEZZServicesCadastrar
    .New
    .Apelido('ID', '#')
    .Apelido('NOME', 'CLIENTE')
    .Apelido('RAZAO_SOCIAL', 'RAZÃO SOCIAL')
    .SQL('  SELECT')
    .SQL('    C.ID,')
    .SQL('    C.NOME,')
    .SQL('    C.RAZAO_SOCIAL,')
    .SQL('    C.CONTATO,')
    .SQL('    C.CEP,')
    .SQL('    C.EMAIL,')
    .SQL('    C.CIDADE,')
    .SQL('    C.BAIRRO,')
    .SQL('    C.ENDERECO,')
    .SQL('    C.CPF')
    .SQL('  FROM')
    .SQL('    CLIENTES C')
    .SQL('  WHERE')
    .SQL('    C.ID = :ID');
end;

function TNEZZFactoryCliente.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryCliente;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZCliente.DataSet;
end;

destructor TNEZZFactoryCliente.Destroy;
begin
  inherited;
end;

function TNEZZFactoryCliente.FiltrarCliente(ANome : string): iNEZZFactoryCliente;
begin
  Result := Self;

  FNEZZCliente
    .Filtrar('NOME' ,ANome)
    .Abrir;
end;

function TNEZZFactoryCliente.ListarCliente: iNEZZFactoryCliente;
begin
    Result := Self;

  FNEZZCliente
    .Parametro('NOME', FNEZZSesao.id)
    .Abrir;
end;

function TNEZZFactoryCliente.Log(
  AValue: TNEZZFactoryTaskLog): iNEZZFactoryCliente;
begin
  Result := Self;
  FNEZZLog := AValue;
end;

class function TNEZZFactoryCliente.New: iNEZZFactoryCliente;
begin
  Result := Self.Create;
end;

end.
