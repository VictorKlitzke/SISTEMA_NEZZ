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
  NEZZ.Models.Cliente,
  System.UITypes;

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
    btnSalvar: TcxButton;
    dsDadosEditar: TDataSource;
    procedure btnCloseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FNEZZModelsClientes : iNEZZModelsCliente;
  public
    FNEZZFactoryUsuario: TNEZZFactoryCliente;
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

procedure TNEZZViewsClienteEditar.btnSalvarClick(Sender: TObject);
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
    FNEZZModelsClientes
      .Salvar;

  finally
    MessageDlg('Otimo! Cliente atualizado com sucesso', mtInformation, mbYesNo, 0);
    Close;
  end;
end;

procedure TNEZZViewsClienteEditar.FormCreate(Sender: TObject);
begin
  inherited;
  FNEZZModelsClientes := TNEZZModelsCliente.New.DataSource(dsDadosEditar);
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
