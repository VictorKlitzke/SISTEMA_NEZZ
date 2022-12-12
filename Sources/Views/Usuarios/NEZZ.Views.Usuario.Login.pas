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
  ConexaoDados,
  NEZZ.Factory.Autenticacao,
  System.UITypes, NEZZ.Factory.Usuario,
  NEZZ.Models.Produto, NEZZ.Models.Usuario;

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
    procedure edSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edLoginPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edSenhaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    FNEZZModelsUsuario: iNEZZModelsUsuario;
    FNEZZFactoryUsario: iNEZZFactoryUsuario;
  public
    { Public declarations }
  end;

var
  NEZZViewsUsuarioLogin: TNEZZViewsUsuarioLogin;

implementation

uses
  NEZZ.Views.Clientes;

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

    if FNEZZModelsUsuario.Status = 1 then
    begin
      MessageDlg('ATENÇÃO, Usuário está desativado', mtInformation, [mbOK], 0)
    end
    else
    begin
      ModalResult := mrOk;
    end;
  except
  on e: Exception do
    MessageDlg('Falha no login!', mtWarning, [mbOK], 0);
  end;
end;

procedure TNEZZViewsUsuarioLogin.edLoginPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsUsuarioLogin.edSenhaKeyDown(Sender: TObject;
  var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if edSenha.Text <> '' then
      btnLogin.Click;
  end;
end;

procedure TNEZZViewsUsuarioLogin.edSenhaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O senha é obrigatório';
end;

end.
