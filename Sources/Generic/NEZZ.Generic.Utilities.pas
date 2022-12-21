unit NEZZ.Generic.Utilities;

interface

type

  TTypeMsg = (tMsgDSuccess, tMsgDError, tMsgDInformation, tMsgDWarning);

  procedure MSG(aText, aMsg : string; ATipoAlerta: TTypeMsg);


implementation

uses
  NEZZ.Generic.Mensagem;

procedure MSG(aText, aMsg : string; ATipoAlerta: TTypeMsg);
var
  TMsgGeneric : TNEZZGenericMensagem;
begin

  TMsgGeneric                       :=  TNEZZGenericMensagem.Create(nil);
  TMsgGeneric.lbTitulo.Caption      :=  AText;
  TMsgGeneric.lbTexto.Caption       :=  AMsg;
  TMsgGeneric.FTypeAlert            :=  ATipoAlerta;
  TMsgGeneric.Show;

end;

end.
