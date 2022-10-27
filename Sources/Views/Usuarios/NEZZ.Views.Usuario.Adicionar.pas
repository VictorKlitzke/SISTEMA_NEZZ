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
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxTextEdit,
  Vcl.ExtCtrls,
  Data.DB,
  System.UITypes;

type
  TNEZZViewsUsuarioAdicionar = class(TForm)
    dsUsuarios: TDataSource;
    pnContent: TPanel;
    lbCadastrar: TLabel;
    edNome: TcxTextEdit;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    edCidade: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edBairro: TcxTextEdit;
    pnButtons: TPanel;
    btnLimpar: TcxButton;
    btnSalvar: TcxButton;
    pnHeader: TPanel;
    lbusuarios: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    edCEP: TcxTextEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ValidarUsuario(Sender: TObject;
    var DisplayValue: Variant;
    var ErrorText: TCaption;
    var Error: Boolean);
  end;

var
  NEZZViewsUsuarioAdicionar: TNEZZViewsUsuarioAdicionar;

implementation

uses
  NEZZ.Factory.Autenticacao,
  NEZZ.Factory.Usuario;

{$R *.dfm}

procedure TNEZZViewsUsuarioAdicionar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsUsuarioAdicionar.btnLimparClick(Sender: TObject);
begin
  edNome.Clear;
  edLogin.Clear;
  edSenha.Clear;
  edCidade.Clear;
  edEndereco.Clear;
  edBairro.Clear;
  edCEP.Clear;
end;

procedure TNEZZViewsUsuarioAdicionar.btnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edLogin.ValidateEdit();
  edSenha.ValidateEdit();
  edCidade.ValidateEdit();
  edEndereco.ValidateEdit();
  edBairro.ValidateEdit();
  edCEP.ValidateEdit();

  try
    TNEZZFactoryUsuario
      .New
      .AdicionarUsuario(
        edNome.Text,
        edLogin.Text,
        edSenha.Text,
        edCidade.Text,
        edEndereco.Text,
        edBairro.Text,
        edCEP.Text
      );

    MessageDlg('Us�ario registrado com sucesso' , mtInformation , [mbOk] , 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do us�ario!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;

end;

procedure TNEZZViewsUsuarioAdicionar.ValidarUsuario(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);

var
  LUsuario: Boolean;
begin
  LUsuario := TNEZZFactoryUsuario.New.ExisteUsuario(edLogin.Text);
  LUsuario := TNEZZFactoryUsuario.New.ExisteUsuario(edSenha.Text);

  if LUsuario then
  begin
    Error := True;
    ErrorText := 'Esse Us�ario j� existe!!!';
    Exit;
  end;
    Error := DisplayValue = '';
    ErrorText := 'O campo � obrigat�rio'
end;

end.