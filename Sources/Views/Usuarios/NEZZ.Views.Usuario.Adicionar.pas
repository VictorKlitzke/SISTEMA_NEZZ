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
  System.UITypes,
  cxEdit,
  cxTextEdit,
  NEZZ.Factory.Usuario,
  NEZZ.Models.Usuario,
  NEZZ.Services.Query,
  NEZZ.Views.MSG_CRUD,
  NEZZ.Views.Usuario.Login;

type
  TNEZZViewsUsuarioAdicionar = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    edNome: TcxTextEdit;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    edTelefone: TcxTextEdit;
    BtnLimpar: TcxButton;
    BtnSalvar: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edNomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edLoginPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edSenhaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure edContatoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
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
  edTelefone.ValidateEdit();

  try
    TNEZZFactoryUsuario
      .New
      .AdicionarUsuario(
        edNome.Text,
        edLogin.Text,
        edSenha.Text,
        edTelefone.Text
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

procedure TNEZZViewsUsuarioAdicionar.edContatoPropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Telefone para contato é obrigatório';
end;

procedure TNEZZViewsUsuarioAdicionar.edLoginPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Login é obrigatório';
end;

procedure TNEZZViewsUsuarioAdicionar.edNomePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Nome é obrigatório';
end;

procedure TNEZZViewsUsuarioAdicionar.edSenhaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Senha é obrigatório';
end;

procedure TNEZZViewsUsuarioAdicionar.FormCreate(Sender: TObject);
begin
  edLogin.Properties.OnValidate := validarLogin;
end;

procedure TNEZZViewsUsuarioAdicionar.validarLogin(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);

var
  LUsuario : Boolean;
begin
  inherited;

  LUsuario := TNEZZFactoryUsuario.New.ExisteUsuario(edLogin.Text);
  LUsuario := TNEZZFactoryUsuario.New.ExisteUsuario(edNome.Text);
  LUsuario := TNEZZFactoryUsuario.New.ExisteUsuario(edSenha.Text);

  if LUsuario then
  begin
    Error := True;
    ErrorText := 'Já existe um usuário com esse login. Tente outro';
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
  edTelefone.Clear;
end;

end.
