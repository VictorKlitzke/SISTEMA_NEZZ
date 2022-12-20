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
  Vcl.ExtCtrls,
  NEZZ.Generic.Utilities;

type
  TNEZZGenericMensagem = class(TForm)
    pnContent: TPanel;
    pnTitulo: TPanel;
    lbTitulo: TLabel;
    pnBotao: TPanel;
    BtnOK: TcxButton;
    img_icone: TImage;
    lbTexto: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    var
    FTypeAlert : TTypeMsg;
    FTop,
    FLeft      : Integer;
  end;

var
  NEZZGenericMensagem: TNEZZGenericMensagem;

implementation

{$R *.dfm}

procedure TNEZZGenericMensagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  NEZZGenericMensagem := nil;
end;

procedure TNEZZGenericMensagem.FormCreate(Sender: TObject);
begin
  FTop      :=  0;
  FLeft     :=  Screen.PrimaryMonitor.Width - Width - 20;
  Self.Top  :=  FTop;
  Self.Left :=  FLeft;
end;

procedure TNEZZGenericMensagem.FormShow(Sender: TObject);
var
  LPath : string;
begin
  {$IFDEF DEBUG}
  LPath :=  '..\';
  {$ELSE}
  LPath :=  '.\';
  {$ENDIF}

  case FTypeAlert of
    tMsgDSuccess:         begin
                            img_icone.Picture.LoadFromFile(LPath+'Assents\Img\success.png');
                          end;
    tMsgDError:           begin
                            img_icone.Picture.LoadFromFile(LPath+'Assents\Img\error.png');
                          end;
    tMsgDInformation:    begin
                            img_icone.Picture.LoadFromFile(LPath+'Assents\Img\info.png');
                            end;
    tMsgDWarning:        begin
                            img_icone.Picture.LoadFromFile(LPath+'Assents\Img\warning.png');
                          end;
  end;
end;
end.
