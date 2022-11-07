unit NEZZ.Controllers.Usuario;

interface

uses
  System.SysUtils,
  BCript,
  NEZZ.Services.Query;

implementation

type
  TUNEZZControllersUsuario = record
    Id : Integer;
    Nome : string;
    Login : string;
    Senha : string;
    status : Integer;
    Telefone : string;
  end;

  iNEZZControllersUsuario = interface
    ['{DCAF7BD5-77BF-4337-BC72-A56AC6921CBC}']
  end;

  TNEZZControllersUsuario = class
    private

    public
    constructor Create;
    destructor Destroy;
  end;

{ TNEZZControllersUsuario }

constructor TNEZZControllersUsuario.Create;
begin

end;

destructor TNEZZControllersUsuario.Destroy;
begin
  inherited;
end;

end.
