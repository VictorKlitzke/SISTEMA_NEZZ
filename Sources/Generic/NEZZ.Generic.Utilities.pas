unit NEZZ.Generic.Utilities;

interface

type
  TNEZZEvent = procedure of object;

  TTypeMsg = ( tMsgDNone, tMsgDInformation, tMsgDWarning, tMsgDanger,tMsgDSuccess );

  TNEZZGenericMensagem = class
    class function isNumerico(aText : string): Boolean;
  end;

implementation

{ TNEZZGenericMensagem }

class function TNEZZGenericMensagem.isNumerico(aText: string): Boolean;
var
  iValue, iCode : Integer;
begin
  Val(aText,iValue,iCode);
  if iCode = 0 then
    Result := True
  else
    Result := False;
end;

end.
