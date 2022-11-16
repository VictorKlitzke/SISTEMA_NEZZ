unit NEZZ.Factory.Usuario;

interface

uses
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Services.Query,
  BCrypt,
  NEZZ.Models.Usuario;

type
  TNEZZFactoryUsuarioLog = procedure(Value: string) of object;

  iNEZZFactoryUsuario = interface
    ['{1592C510-8A28-408D-BD1A-F6430ADE3590}']

    function ExisteUsuario(ALogin : string): Boolean;
    function AdicionarUsuario(ALogin,ANome,ASenha,ATelefone : string): iNEZZFactoryUsuario;
    function DataSource(var ADataSource : TDataSource): iNEZZFactoryUsuario;
    function AtualizarUsuario(ALogin,ANome,ASenha,ATelefone : string): iNEZZFactoryUsuario;
    function DeletarUsuario(ANome : Integer): iNEZZFactoryUsuario;
    function FiltrarUsuario(ALogin : string): iNEZZFactoryUsuario;
    function DesativarUsuario(ALogin: Integer): iNEZZFactoryUsuario;

    function ListarUsuarios: iNEZZFactoryUsuario;

    function Log(AValue: TNEZZFactoryUsuarioLog): iNEZZFactoryUsuario;
  end;

  TNEZZFactoryUsuario = class(TInterfacedObject, iNEZZFactoryUsuario)
  private
    FNEZZSessao: iNEZZControllerSessao;
    FNEZZUsuario: iNEZZServicesCadastrar;
    FLOG: TNEZZFactoryUsuarioLog;
  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZFactoryUsuario;

    function ExisteUsuario(ALogin : string): Boolean;
    function AdicionarUsuario(ALogin,ANome,ASenha,ATelefone : string): iNEZZFactoryUsuario;
    function DataSource(var ADataSource : TDataSource): iNEZZFactoryUsuario;
    function AtualizarUsuario(ALogin,ANome,ASenha,ATelefone : string): iNEZZFactoryUsuario;
    function DeletarUsuario(ANome : Integer): iNEZZFactoryUsuario;
    function FiltrarUsuario(ANome : string): iNEZZFactoryUsuario;
    function DesativarUsuario(ALogin: Integer): iNEZZFactoryUsuario;
    function ListarUsuarios: iNEZZFactoryUsuario;

    function Log(AValue: TNEZZFactoryUsuarioLog): iNEZZFactoryUsuario;
  end;

implementation

{ TNEZZFactoryUsuario }

function TNEZZFactoryUsuario.AdicionarUsuario(
  ALogin,
  ANome,
  ASenha,
  ATelefone: string): iNEZZFactoryUsuario;
begin
  Result := Self;

  TNEZZModelsUsuario
    .New
    .Inserir
    .Nome(ANome)
    .Senha(ASenha)
    .Login(ALogin)
    .Telefone(ATelefone)
    .Status(0)
    .Salvar;

    if Assigned(FLOG) then
      FLOG('Funcionando corretamente!');
end;

function TNEZZFactoryUsuario.AtualizarUsuario(
  ALogin,
  ANome,
  ASenha,
  ATelefone: string): iNEZZFactoryUsuario;
begin
  Result := Self;

  TNEZZModelsUsuario
    .New
    .Filtrar('NOME' , ANome)
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
    .Apelido('STATUS_DESC', 'STATUS')
    .Apelido('TELEFONE', 'TELEFONE')
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
    .SQL('    U.TELEFONE')
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
  ANome : Integer): iNEZZFactoryUsuario;
begin
  Result := Self;

  TNEZZModelsUsuario
    .New
    .Filtrar('ID' , ANome)
    .Deletar
    .Salvar;
end;

function TNEZZFactoryUsuario.DesativarUsuario(
  ALogin: Integer): iNEZZFactoryUsuario;
begin
  Result := Self;

  TNEZZModelsUsuario
    .New
    .Filtrar('ID' , ALogin)
    .Editar
    .Status(1)
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
    .SQL('  UPPER(U.LOGIN) = UPPER(:LOGIN)')
    .Parametro('LOGIN', ALogin)
    .Abrir
    .Campo('QTD')
    .AsInteger <> 0
end;

function TNEZZFactoryUsuario.FiltrarUsuario(ANome : string): iNEZZFactoryUsuario;
begin
  Result := Self;

  FNEZZUsuario
    .Filtrar('NOME' , ANome)
    .Abrir;
end;

function TNEZZFactoryUsuario.ListarUsuarios: iNEZZFactoryUsuario;
begin
  Result := Self;

  FNEZZUsuario
    .Abrir;
end;

function TNEZZFactoryUsuario.Log(AValue: TNEZZFactoryUsuarioLog): iNEZZFactoryUsuario;
begin
  Result := Self;
  FLOG := AValue;
end;

class function TNEZZFactoryUsuario.New: iNEZZFactoryUsuario;
begin
  Result := Self.Create;
end;

end.
