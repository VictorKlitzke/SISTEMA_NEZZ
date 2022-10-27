unit NEZZ.Factory.Autenticacao;

interface

uses
  System.SysUtils;

type
  AutenticacaoError = class(Exception);

  iNEZZFactoryAutenticacao = interface
    ['{F34EBE29-0585-4700-B5EB-199C56E3F6B7}']
    function Login(ALogin, ASenha : string): iNEZZFactoryAutenticacao;
  end;

  TNEZZFactoryAutenticacao = class(TInterfacedObject, iNEZZFactoryAutenticacao)
  private

  public
  constructor Create;
  destructor Destroy;

  class function New: iNEZZFactoryAutenticacao;

  function Login(ALogin, ASenha : string): iNEZZFactoryAutenticacao;
  end;

implementation

uses
  BCrypt,
  NEZZ.Models.Usuario,
  NEZZ.Controllers.Sessao;

{ TNEZZFactoryAutenticacao }

constructor TNEZZFactoryAutenticacao.Create;
begin

end;

destructor TNEZZFactoryAutenticacao.Destroy;
begin

end;

function TNEZZFactoryAutenticacao.Login(ALogin,
  ASenha: string): iNEZZFactoryAutenticacao;
var
  LModel: iNEZZModelsUsuario;
begin
  Result := Self;

  LModel := TNEZZModelsUsuario
    .New
    .Filtrar('LOGIN', ALogin);

  if not LModel.TemRegistros then
    raise AutenticacaoError.Create('Usuário não encontrado');

  if not TBCrypt.CompareHash(ASenha, LModel.Senha) then
    raise AutenticacaoError.Create('Senha inválida');

  TNEZZControllerSessao.New.Entrar(LModel.ID , LModel.Nome);
end;

class function TNEZZFactoryAutenticacao.New: iNEZZFactoryAutenticacao;
begin
  Result := Self.Create;
end;

end.
