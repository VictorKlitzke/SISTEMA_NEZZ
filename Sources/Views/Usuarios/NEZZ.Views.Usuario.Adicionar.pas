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
  Data.DB;

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
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public

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

procedure TNEZZViewsUsuarioAdicionar.btnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edLogin.ValidateEdit();
  edSenha.ValidateEdit();
  edCidade.ValidateEdit();
  edEndereco.ValidateEdit();
  edBairro.ValidateEdit();

  try
    TNEZZFactoryUsuario
      .New
      .AdicionarUsuario(
        edNome.Text,
        edLogin.Text,
        edSenha.Text,
        edCidade.Text,
        edEndereco.Text,
        edBairro.Text
      );

    MessageDlg('Cliente registrado com sucesso' , mtInformation , [mbOk] , 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do cliente!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;

end;

end.
