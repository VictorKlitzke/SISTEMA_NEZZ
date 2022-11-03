unit NEZZ.Views.Usuario.Login;

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
  cxContainer, cxEdit,
  cxTextEdit,
  Vcl.StdCtrls,
  cxButtons,
  dxGDIPlusClasses,
  Vcl.ExtCtrls,
  NEZZ.Factory.Autenticacao,
  System.UITypes;

type
  TNEZZViewsUsuarioLogin = class(TForm)
    pnContent: TPanel;
    Image1: TImage;
    pnRigth: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnLogin: TcxButton;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    pnClose: TPanel;
    pnClose1: TPanel;
    btnClose: TcxButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnCloseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsUsuarioLogin: TNEZZViewsUsuarioLogin;

implementation

uses
  NEZZ.Views.Clientes,
  ConexaoDados;

{$R *.dfm}

procedure TNEZZViewsUsuarioLogin.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsUsuarioLogin.btnCloseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if MessageDlg('Deseja realmente sair?', mtConfirmation, mbYesNo, 1) = mrYes then
  Close;
end;

procedure TNEZZViewsUsuarioLogin.btnLoginClick(Sender: TObject);
begin
  edLogin.ValidateEdit();
  edSenha.ValidateEdit();

  try
    TNEZZFactoryAutenticacao
      .New
      .Login(
        edLogin.Text,
        edSenha.Text
      );

    ModalResult := mrOk;

  except
    on e: Exception do
    MessageDlg('Falha no login!', mtWarning, [mbOK], 0);
  end;
end;

end.
