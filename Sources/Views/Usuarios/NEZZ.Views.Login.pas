unit NEZZ.Views.Login;

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
  cxControls,
  cxContainer,
  cxEdit,
  cxTextEdit,
  Vcl.StdCtrls,
  dxGDIPlusClasses,
  Vcl.ExtCtrls,
  cxButtons;

type
  TNEZZViewsUsuarioLogin = class(TForm)
    pnContent: TPanel;
    btnLogin: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Image3: TImage;
    Image4: TImage;
    pnRigth: TPanel;
    pnUsuario: TPanel;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsUsuarioLogin: TNEZZViewsUsuarioLogin;

implementation

{$R *.dfm}


end.
