unit NEZZ.Views.Usuario.Editar;

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
  cxDBEdit,
  Vcl.ExtCtrls, Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Autenticacao,
  NEZZ.Factory.Usuario,
  NEZZ.Models.Usuario,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query;

type
  TNEZZViewsUsuarioEditar = class(TForm)
    pnContent: TPanel;
    lbNome: TLabel;
    lbRazao: TLabel;
    Label1: TLabel;
    pnFooter: TPanel;
    BtnSalvar: TcxButton;
    pnHeader: TPanel;
    lbCRUD: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    edNome: TcxDBTextEdit;
    edLogin: TcxDBTextEdit;
    edSenha: TcxDBTextEdit;
    edTelefone: TcxDBTextEdit;
    lbSenha: TLabel;
    dsUsuariosEditar: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    FNEZZModelsUsuario : iNEZZModelsUsuario;
  public
    function Usuario(UID: integer): Integer;
  end;

var
  NEZZViewsUsuarioEditar: TNEZZViewsUsuarioEditar;

implementation

{$R *.dfm}

procedure TNEZZViewsUsuarioEditar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsUsuarioEditar.BtnSalvarClick(Sender: TObject);
begin
  edNome.ValidateEdit();
  edLogin.ValidateEdit();
  edSenha.ValidateEdit();
  edTelefone.ValidateEdit();

  try
    FNEZZModelsUsuario.Salvar;

    MessageDlg('Show! usuário atualizado com sucesso', mtInformation, mbYesNo, 0); Close;
  except
    on e: Exception do
    begin
      MessageDlg('Ocorreu um erro ao atualizar o usuário!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsUsuarioEditar.FormCreate(Sender: TObject);
begin
  TNEZZModelsUsuario.New.DataSource(dsUsuariosEditar);
end;

function TNEZZViewsUsuarioEditar.Usuario(UID: integer): Integer;
begin
  FNEZZModelsUsuario.Filtrar('ID' , UID).Editar;
end;

end.
