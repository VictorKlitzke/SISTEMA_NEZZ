unit NEZZ.Generic.Mensagem;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  Vcl.ExtCtrls, NEZZ.Generic.Utilities;

type
  TNEZZGenericMensagem = class(TForm)
    pnContent: TPanel;
    pnTitulo: TPanel;
    lbTitulo: TLabel;
    lbTexto: TLabel;
    pnBotao: TPanel;
    BtnOK: TcxButton;
  private
    procedure msgSuccess;
    procedure msgDanger;
    procedure msgInformation;
    procedure msgNone;
    procedure msgWarning;
  public
    ActionSim: TNEZZEvent;
    ActionNao: TNEZZEvent;
    ActionOk: TNEZZEvent;
    procedure init(aTipo:TTypeMsg;aMsg:String;aTitulo:String='');
  end;

var
  NEZZGenericMensagem: TNEZZGenericMensagem;

implementation

{$R *.dfm}

{ TForm3 }

procedure TNEZZGenericMensagem.init(aTipo: TTypeMsg; aMsg, aTitulo: String);
begin

end;

procedure TNEZZGenericMensagem.msgDanger;
begin
//  lbTitulo.TextSettings.HorzAlign := TTextAlign.Center;
//  lbTitulo.TextSettings.FontColor := $FFC1392B;
//  lbTitulo.Text := 'ERRO';
//  pnBotao.Action := pnBotao;
end;

procedure TNEZZGenericMensagem.msgInformation;
begin

end;

procedure TNEZZGenericMensagem.msgNone;
begin

end;

procedure TNEZZGenericMensagem.msgSuccess;
begin

end;

procedure TNEZZGenericMensagem.msgWarning;
begin

end;

end.
