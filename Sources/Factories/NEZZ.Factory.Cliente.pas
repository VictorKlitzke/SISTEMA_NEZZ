unit NEZZ.Factory.Cliente;

interface

uses
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Services.Query,
  BCrypt,
  NEZZ.Models.Cliente;

type
  TNEZZFactoryTaskLog = procedure(AValue : string) of object;

  iNEZZFactoryCliente = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function ClienteExiste(ANome : string): Boolean;
    function AdicionarCliente(ANome,ARazao,AContato,ACEP,AEmail,ACidade,ABairro,AEndereco,ACPF : string): iNEZZFactoryCliente;
    function AtualizarCliente(ANome : string): iNEZZFactoryCliente;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryCliente;
    function DeletarCliente(ANome : integer): iNEZZFactoryCliente;
    function FiltrarCliente(ANome : string): iNEZZFactoryCliente;

    function ListarCliente: iNEZZFactoryCliente;

  end;

  TNEZZFactoryCliente = class(TInterfacedObject, iNEZZFactoryCliente)
  private
    FNEZZSesao : iNEZZControllerSessao;
    FNEZZCliente: iNEZZServicesCadastrar;

  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryCliente;

    function ClienteExiste(ANome : string): Boolean;

    function AdicionarCliente(ANome,ARazao,AContato,ACEP,AEmail,ACidade,ABairro,AEndereco,ACPF : string): iNEZZFactoryCliente;
    function AtualizarCliente(ANome : string): iNEZZFactoryCliente;
    function DataSource(var ADataSource: TDataSource): iNEZZFactoryCliente;
    function DeletarCliente(ANome : integer): iNEZZFactoryCliente;
    function FiltrarCliente(ANome : string): iNEZZFactoryCliente;

    function ListarCliente: iNEZZFactoryCliente;
  end;

implementation

{ TNEZZFactoryCliente }

function TNEZZFactoryCliente.AdicionarCliente(ANome,
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
end;

function TNEZZFactoryCliente.AtualizarCliente(
  ANome: string): iNEZZFactoryCliente;
begin
  Result := Self;

  TNEZZModelsCliente
    .New
    .Filtrar('ID' , ANome)
    .Editar
    .Salvar
end;

function TNEZZFactoryCliente.ClienteExiste(ANome: string): Boolean;
begin
  Result := TNEZZServicesCadastrar
    .New
    .SQLLimpar
    .SQL('SELECT')
    .SQL('  COUNT(*) AS QTD')
    .SQL('FROM')
    .SQL('  CLIENTES C')
    .SQL('WHERE')
    .SQL('  UPPER(C.NOME) = UPPER(:NOME)')
    .Parametro('NOME', ANome)
    .Abrir
    .Campo('QTD')
    .AsInteger <> 0
end;

constructor TNEZZFactoryCliente.Create;
begin

  FNEZZCliente := TNEZZServicesCadastrar
    .New
    .Apelido('ID', '#')
    .Apelido('NOME', 'CLIENTE')
    .Apelido('RAZAO_SOCIAL', 'RAZÃO SOCIAL')
    .Apelido('CONTATO', 'CONTATO')
    .Apelido('CEP', 'CEP')
    .Apelido('EMAIL', 'EMAIL')
    .Apelido('CIDADE', 'CIDADE')
    .Apelido('BAIRRO', 'BAIRRO')
    .Apelido('ENDERECO', 'ENDERECO')
    .Apelido('CPF', 'CPF')
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
end;

function TNEZZFactoryCliente.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryCliente;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZCliente.DataSet;
end;

function TNEZZFactoryCliente.DeletarCliente(
  ANome: integer): iNEZZFactoryCliente;
begin
  Result := Self;

  TNEZZModelsCliente
    .New
    .Filtrar('ID' , ANome)
    .Apagar
    .Salvar;
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
    .Abrir;
end;

class function TNEZZFactoryCliente.New: iNEZZFactoryCliente;
begin
  Result := Self.Create;
end;

end.
