unit NEZZ.Views.Clientes;

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
  Vcl.WinXCtrls,
  cxButtons,
  Vcl.ExtCtrls,
  cxControls,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  Data.DB,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  cxCheckBox,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  NEZZ.Views.Cliente.Adicionar,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Cliente,
  NEZZ.Models.Cliente,
  NEZZViewBase,
  ConexaoDados,
  NEZZ.Views.Cliente.Editar,
  System.UITypes;

type
  TNEZZViewsClientes = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    btnDeletar: TcxButton;
    btnAdicionar: TcxButton;
    dsClientes: TDataSource;
    dsDadosClienteDBTableView1: TcxGridDBTableView;
    dsDadosClienteLevel1: TcxGridLevel;
    dsDadosCliente: TcxGrid;
    BoxPesquisa: TSearchBox;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dsDadosClienteDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnDeletarClick(Sender: TObject);
    procedure BoxPesquisaChange(Sender: TObject);
  private
    FNEZZCliente: iNEZZServicesCadastrar;
    FNEZZFactoryCliente: iNEZZFactoryCliente;
    FNEZZModelsCliente : iNEZZModelsCliente;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsClientes: TNEZZViewsClientes;

implementation

{$R *.dfm}

{ TNEZZViewsClientes }

procedure TNEZZViewsClientes.BoxPesquisaChange(Sender: TObject);
begin
  if BoxPesquisa.Text = '' then
  begin
    FNEZZFactoryCliente := TNEZZFactoryCliente
      .New
      .DataSource(dsClientes)
      .ListarCliente;
  end
  else
  begin
    FNEZZFactoryCliente := TNEZZFactoryCliente
      .New
      .DataSource(dsClientes)
      .FiltrarCliente(BoxPesquisa.Text);
  end;
end;

procedure TNEZZViewsClientes.btnAdicionarClick(Sender: TObject);
begin
  try
    if not Assigned(NEZZViewsClienteAdicionar) then
      Application.CreateForm(TNEZZViewsClienteAdicionar, NEZZViewsClienteAdicionar);

    NEZZViewsClienteAdicionar.ShowModal;
    NEZZViewsClienteAdicionar.Free;

    CarregarDados;
  finally
    FreeAndNil(NEZZViewsClienteAdicionar);
  end;
end;

procedure TNEZZViewsClientes.btnBuscarClick(Sender: TObject);
begin
  CarregarDados;
end;

procedure TNEZZViewsClientes.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsClientes.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente remover esse cliente?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    try
      FNEZZFactoryCliente
        .DeletarCliente(
          dsClientes.DataSet.FieldByName('ID').AsInteger
        );

        MessageDlg('Cliente removido com sucesso!!', mtInformation, [mbOK], 0);
    except
    on e: Exception do
    begin
      MessageDlg('Ocorreu um erro ao deletar o cliente' + #13 + e.message , mtWarning , [mbOk] , 0)
    end;
    end;
    CarregarDados;
  end;
end;

procedure TNEZZViewsClientes.btnEditarClick(Sender: TObject);
begin
  MessageDlg('Para editar dar dois clique no cliente para ir a tela de edi??o', mtConfirmation, [mbOK], 1);
end;

procedure TNEZZViewsClientes.CarregarDados;
begin
  FNEZZFactoryCliente := TNEZZFactoryCliente
    .New
    .DataSource(dsClientes)
    .ListarCliente;

  with dsDadosClienteDBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsClientes.dsDadosClienteDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  if not Assigned(NEZZViewsClienteEditar) then
    Application.CreateForm(TNEZZViewsClienteEditar, NEZZViewsClienteEditar);

  NEZZViewsClienteEditar.Cliente(dsClientes.DataSet.FieldByName('ID').AsInteger);

  NEZZViewsClienteEditar.ShowModal;
  FreeAndNil(NEZZViewsClienteEditar);

  CarregarDados;
end;

procedure TNEZZViewsClientes.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
