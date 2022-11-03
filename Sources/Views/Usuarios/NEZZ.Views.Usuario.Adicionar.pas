unit NEZZ.Views.Usuario.Adicionar;

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
  cxControls,
  cxContainer,
  cxEdit,
  cxTextEdit,
  NEZZ.Factory.Usuario,
  NEZZ.Models.Usuario,
  NEZZ.Services.Query,
  NEZZ.Views.MSG_CRUD,
  NEZZ.Views.Usuario.Login;

type
  TNEZZViewsUsuarioAdicionar = class(TForm)
    pnHeader: TPanel;
    pnContent: TPanel;
    pnFooter: TPanel;
    btnClose: TcxButton;
    pnClose: TPanel;
    edNome: TcxTextEdit;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    edCidade: TcxTextEdit;
    edBairro: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edCEP: TcxTextEdit;
    Label1: TLabel;
    btnSalvar: TcxButton;
    BtnLimpar: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure validarLogin(Sender: TObject;
    var DisplayValue: Variant;
    var ErrorText: TCaption;
    var Error: Boolean);
  public

  end;

var
  NEZZViewsUsuarioAdicionar: TNEZZViewsUsuarioAdicionar;

implementation

{$R *.dfm}

procedure TNEZZViewsUsuarioAdicionar.btnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edLogin.ValidateEdit();
  edSenha.ValidateEdit();
  edCidade.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCEP.ValidateEdit();

  try
    TNEZZFactoryUsuario
      .New
      .AdicionarUsuario(
        edNome.Text,
        edLogin.Text,
        edSenha.Text,
        edCidade.Text,
        edBairro.Text,
        edEndereco.Text,
        edCEP.Text
      );

    MessageDlg('Usúario registrado com sucesso!!' , mtInformation , [mbOK] , 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do usúario!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsUsuarioAdicionar.validarLogin(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);

var
  LUsuario : Boolean;
begin
  inherited;

  LUsuario := TNEZZFactoryUsuario.New.ExisteUsuario(edLogin.Text);

  if LUsuario then
  begin
    Error := True;
    ErrorText := 'Já existe um usuário com esse login. Tenta outro';
    Exit;
  end;

  Error := DisplayValue = '';
  ErrorText := 'O campo é obrigatório';

end;

procedure TNEZZViewsUsuarioAdicionar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsUsuarioAdicionar.BtnLimparClick(Sender: TObject);
begin
  edNome.Clear;
  edLogin.Clear;
  edSenha.Clear;
  edCidade.Clear;
  edBairro.Clear;
  edEndereco.Clear;
  edCEP.Clear;
end;

end.
