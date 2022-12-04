unit NEZZ.Views.Cliente.Editar;

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
  cxButtons,
  Vcl.ExtCtrls,
  ConexaoDados,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Cliente,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  NEZZViewBase,
  Data.DB,
  NEZZ.Models.Cliente, cxDBEdit;

type
  TNEZZViewsClienteEditar = class(TForm)
    pnFooter: TPanel;
    pnContent: TPanel;
    BtnSalvar: TcxButton;
    dsEditarCliente: TDataSource;
    edNome: TcxDBTextEdit;
    edRazao: TcxDBTextEdit;
    edCPF: TcxDBTextEdit;
    edContato: TcxDBTextEdit;
    edCidade: TcxDBTextEdit;
    edBairro: TcxDBTextEdit;
    edEndereco: TcxDBTextEdit;
    edEmail: TcxDBTextEdit;
    edCEP: TcxDBTextEdit;
    lbNome: TLabel;
    lbRazao: TLabel;
    lbCidade: TLabel;
    lbCEP: TLabel;
    lbEmail: TLabel;
    lbCPF: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    FNEZZModelsClientes : iNEZZModelsCliente;
  public
    function Cliente(UID: integer): Integer;
  end;

var
  NEZZViewsClienteEditar: TNEZZViewsClienteEditar;

implementation

{$R *.dfm}

procedure TNEZZViewsClienteEditar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

function TNEZZViewsClienteEditar.Cliente(UID: integer): Integer;
begin
  FNEZZModelsClientes.Filtrar('ID', UID).Editar;
end;

procedure TNEZZViewsClienteEditar.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edRazao.ValidateEdit();
  edCPF.ValidateEdit();
  edContato.ValidateEdit();
  edEmail.ValidateEdit();
  edCidade.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCEP.ValidateEdit();

  try
    FNEZZModelsClientes.Salvar;

    MessageDlg('Show! Cliente atualizado com sucesso', mtInformation, mbYesNo, 0); Close;
  except
    on e: Exception do
    begin
      MessageDlg('Ocorreu um erro ao atualizar o cliente' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteEditar.FormCreate(Sender: TObject);
begin
  FNEZZModelsClientes := TNEZZModelsCliente.New.DataSource(dsEditarCliente);
end;

procedure TNEZZViewsClienteEditar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if MessageDlg(
    'Deseja Realmente sair?',
    mtInformation,
    mbYesNo,
    0) = mrOk then
    Close
end;

end.
