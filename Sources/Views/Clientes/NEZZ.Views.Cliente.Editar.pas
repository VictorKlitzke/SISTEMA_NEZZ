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
  cxControls, cxContainer,
  cxEdit, cxTextEdit,
  Vcl.StdCtrls,
  cxButtons,
  Vcl.ExtCtrls,
  ConexaoDados,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Cliente,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  NEZZViewBase, Data.DB, NEZZ.Models.Cliente;

type
  TNEZZViewsClienteEditar = class(TForm)
    pnHeader: TPanel;
    pnFooter: TPanel;
    pnContent: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
    lbCRUD: TLabel;
    edNome: TcxTextEdit;
    edRazao: TcxTextEdit;
    edCPF: TcxTextEdit;
    edContato: TcxTextEdit;
    edCidade: TcxTextEdit;
    edBairro: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edCEP: TcxTextEdit;
    edEmail: TcxTextEdit;
    cxButton1: TcxButton;
    dsEditarCliente: TDataSource;
    procedure btnCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FNEZZModelsClientes : iNEZZModelsCliente;
  public
    function cliente(UID: integer): Integer;
  end;

var
  NEZZViewsClienteEditar: TNEZZViewsClienteEditar;

implementation

{$R *.dfm}

procedure TNEZZViewsClienteEditar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

function TNEZZViewsClienteEditar.cliente(UID: integer): Integer;
begin
  FNEZZModelsClientes.Filtrar('ID', UID).Editar;
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
