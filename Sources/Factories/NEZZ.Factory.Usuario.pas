unit NEZZ.Factory.Usuario;

interface

uses
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Services.Query,
  BCrypt,
  NEZZ.Models.Usuario;

type
  iNEZZFactoryUsuario = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function ExisteUsuario(ALogin : string): Boolean;
    function AdicionarUsuario(ALogin,ANome,ASenha,ACidade,ABairro,AEndereco,ACEP : string): iNEZZFactoryUsuario;
    function DataSource(var ADataSource : TDataSource): iNEZZFactoryUsuario;
    function AtualizarUsuario(ALogin,ANome,ASenha,ACidade,ABairro,AEndereco,ACEP : string): iNEZZFactoryUsuario;
    function DeletarUsuario(ALogin,ANome,ASenha,ACidade,ABairro,AEndereco,ACEP : string): iNEZZFactoryUsuario;
    function FiltrarCliente(ALogin,ANome : string): iNEZZFactoryUsuario;

    function ListarUsuarios: iNEZZFactoryUsuario;
  end;

  TNEZZFactoryUsuario = class(TInterfacedObject, iNEZZFactoryUsuario)
  private
    FNEZZSessao: iNEZZControllerSessao;
    FNEZZUsuario: iNEZZServicesCadastrar;
  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryUsuario;

    function ExisteUsuario(ALogin : string): Boolean;
    function AdicionarUsuario(ALogin,ANome,ASenha,ACidade,ABairro,AEndereco,ACEP : string): iNEZZFactoryUsuario;
    function DataSource(var ADataSource : TDataSource): iNEZZFactoryUsuario;
    function AtualizarUsuario(ALogin,ANome,ASenha,ACidade,ABairro,AEndereco,ACEP : string): iNEZZFactoryUsuario;
    function DeletarUsuario(ALogin,ANome,ASenha,ACidade,ABairro,AEndereco,ACEP : string): iNEZZFactoryUsuario;
    function FiltrarCliente(ALogin,ANome : string): iNEZZFactoryUsuario;

    function ListarUsuarios: iNEZZFactoryUsuario;
  end;

implementation

{ TNEZZFactoryUsuario }

function TNEZZFactoryUsuario.AdicionarUsuario(
  ALogin,
  ANome,
  ASenha,
  ACidade,
  ABairro,
  AEndereco,
  ACEP: string): iNEZZFactoryUsuario;
begin
  Result := Self;

  TNEZZModelsUsuario
    .New
    .Nome(ANome)
    .Senha(ASenha)
    .Login(ALogin)
    .Cidade(ACidade)
    .Bairro(ABairro)
    .Endereco(AEndereco)
    .CEP(ACEP)
    .Salvar;
end;

function TNEZZFactoryUsuario.AtualizarUsuario(
  ALogin,
  ANome,
  ASenha,
  ACidade,
  ABairro,
  AEndereco,
  ACEP: string): iNEZZFactoryUsuario;
begin
  Result := Self;
  TNEZZModelsUsuario
    .New
    .Filtrar('ID' , ANome)
    .Editar
    .Salvar;
end;

constructor TNEZZFactoryUsuario.Create;
begin
  FNEZZUsuario := TNEZZServicesCadastrar
    .New
    .Apelido('ID', '#')
    .Apelido('NOME', 'CLIENTE')
    .Apelido('LOGIN', 'LOGIN')
    .Apelido('SENHA', 'SENHA')
    .Apelido('STATUS_DESC', 'STATUS')
    .Apelido('CEP', 'CEP')
    .Apelido('CIDADE', 'CIDADE')
    .Apelido('BAIRRO', 'BAIRRO')
    .Apelido('ENDERECO', 'ENDERECO')
    .SQL('  SELECT')
    .SQL('    U.ID,')
    .SQL('    U.NOME,')
    .SQL('    U.LOGIN,')
    .SQL('    U.SENHA,')
    .SQL('    DECODE(')
    .SQL('      U.STATUS,')
    .SQL('      0, ''ATIVO'',')
    .SQL('      1, ''DESATIVADO'',')
    .SQL('      ''ERRONOCODIGO''')
    .SQL('    ) AS STATUS_DESC,')
    .SQL('    U.STATUS,')
    .SQL('    U.CIDADE,')
    .SQL('    U.BAIRRO,')
    .SQL('    U.ENDERECO,')
    .SQL('    U.CEP')
    .SQL('  FROM')
    .SQL('    USUARIOS U')
end;

function TNEZZFactoryUsuario.DataSource(
  var ADataSource: TDataSource): iNEZZFactoryUsuario;
begin
  Result := Self;
  ADataSource.DataSet := FNEZZUsuario.DataSet
end;

function TNEZZFactoryUsuario.DeletarUsuario(
  ALogin,
  ANome,
  ASenha,
  ACidade,
  ABairro,
  AEndereco,
  ACEP: string): iNEZZFactoryUsuario;
begin
  Result := Self;
  TNEZZModelsUsuario
    .New
    .Filtrar('ID' , ALogin)
    .Deletar
    .Salvar;
end;

destructor TNEZZFactoryUsuario.Destroy;
begin
  inherited;
end;

function TNEZZFactoryUsuario.ExisteUsuario(ALogin: string): Boolean;
begin
   Result := TNEZZServicesCadastrar
    .New
    .SQLLimpar
    .SQL('SELECT')
    .SQL('  COUNT(*) AS QTD')
    .SQL('FROM')
    .SQL('  USUARIOS U')
    .SQL('WHERE')
    .SQL('  UPPER(U.NOME) = UPPER(:NOME)')
    .Parametro('LOGIN', ALogin)
    .Abrir
    .Campo('QTD')
    .AsInteger <> 0
end;

function TNEZZFactoryUsuario.FiltrarCliente(
  ALogin,
  ANome: string): iNEZZFactoryUsuario;
begin
  Result := Self;
  FNEZZUsuario
    .Filtrar('LOGIN' , ALogin)
    .Filtrar('NOME' , ANome)
    .Abrir;
end;

function TNEZZFactoryUsuario.ListarUsuarios: iNEZZFactoryUsuario;
begin
  Result := Self;
  FNEZZUsuario
    .Abrir;
end;

class function TNEZZFactoryUsuario.New: iNEZZFactoryUsuario;
begin
  Result := Self.Create;
end;

end.
