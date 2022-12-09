unit NEZZ.Controllers.Validador;

interface

uses
  SysUtils;

type
  iNEZZValidador = Interface
    ['{B54B148C-2591-4E24-962C-02684CC91B9A}']

    function ValidarCPF(AValue: string): Boolean;
  End;

  TNEZZValidador = class(TInterfacedObject, iNEZZValidador)
    private

    public

    constructor Create;
    destructor Destroy;

    class function New: iNEZZValidador;

    function ValidarCPF(CPF: string): Boolean;
  end;

implementation

{ TNEZZValidador }

constructor TNEZZValidador.Create;
begin

end;

destructor TNEZZValidador.Destroy;
begin

  inherited;
end;

class function TNEZZValidador.New: iNEZZValidador;
begin
  Result := Self.Create;
end;

function TNEZZValidador.ValidarCPF(AValue: string): Boolean;
//var
//  i: Integer;
//  Numero: string;
//  Repitido: Boolean;
//  D1, D2: Integer;
begin
//  Result := False;
//  Numero := '';
//  for i := 1 to Length(CPF) do
//  begin
//    case Char(CPF[i]) of
//      '0' .. '9':
//      Numero := Numero + CPF[i]
//    end;
//    end;
//  if Length(Numero) <> 11 then
//  begin
//    Exit;
//  end;
//  Repitido := True;
//  for i := 2 to Length(Numero) do
//  begin
//    if Numero[1] <> Numero[i] then
//    begin
//      Repitido := False;
//      Break;
//    end;
//  end;
//  if Repitido then
//  begin
//    Exit;
//  end;
//  D1 := 0;
  end;

end.
