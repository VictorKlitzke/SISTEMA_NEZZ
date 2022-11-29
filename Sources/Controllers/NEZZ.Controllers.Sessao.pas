unit NEZZ.Controllers.Sessao;

interface

uses
  System.SysUtils,
  NEZZ.Services.Query;

type
  iNEZZControllerSessao = interface
    ['{B54B148C-2591-4E24-962C-02684CC91B9A}']

    function id: integer;
    function Nome: string;

    Function Entrar(Aid: integer; ANome: string): iNEZZControllerSessao;
    function CaixaAberto: Boolean; overload;
  end;

  TNEZZControllerSessao = class(TInterfacedObject, iNEZZControllerSessao)
  private
    Fid: integer;
    FNome: string;
  public
    constructor Create;
    destructor Destroy;

    class function New: iNEZZControllerSessao;

    function id: integer;
    function Nome: string;

    Function Entrar(Aid: integer; ANome: string): iNEZZControllerSessao;
    function CaixaAberto: Boolean; overload;
  end;

implementation

uses
  NEZZ.Views.Caixa.Adicionar;

var
  GControllerSessao : iNEZZControllerSessao;

{ TNEZZControllerSessao }

function TNEZZControllerSessao.CaixaAberto: Boolean;
begin
  Result := TNEZZServicesCadastrar
    .New
    .SQL('SELECT ID FROM CAIXA_ABRIR WHERE STATUS = 0')
    .Abrir
    .Campo('ID')
    .AsInteger > 0;
end;

constructor TNEZZControllerSessao.Create;
begin

end;

destructor TNEZZControllerSessao.Destroy;
begin
  inherited;
end;

function TNEZZControllerSessao.Entrar(Aid: integer;
  ANome: string): iNEZZControllerSessao;
begin
  Result := Self;
  FId := Aid;
  FNome := ANome;
end;

function TNEZZControllerSessao.id: integer;
begin
  Result := Fid;
end;

class function TNEZZControllerSessao.New: iNEZZControllerSessao;
begin
  if not Assigned(GControllerSessao) then
    GControllerSessao := Self.Create;

  Result := GControllerSessao;
end;

function TNEZZControllerSessao.Nome: string;
begin
  Result := FNome;
end;

end.
