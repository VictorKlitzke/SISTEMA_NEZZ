unit NEZZ.Views.Usuario;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs,
  cxGraphics,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  Vcl.Menus,
  Vcl.StdCtrls,
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
  NEZZ.Factory.Usuario,
  NEZZ.Views.Usuario.Adicionar,
  Vcl.WinXCtrls,
  NEZZ.Services.Query,
  LfResizerVcl,
  System.UITypes,
  NEZZ.Views.Usuario.Editar;

type
  TNEZZViewsUsuario = class(TForm)
    pnHeader: TPanel;
    pnContent: TPanel;
    pnFooter: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
    dsUsuariosGridDBTableView1: TcxGridDBTableView;
    dsUsuariosGridLevel1: TcxGridLevel;
    dsUsuariosGrid: TcxGrid;
    btnAdicionar: TcxButton;
    lbUsuario: TLabel;
    dsUsuarios: TDataSource;
    pnPesquisa: TPanel;
    edPesquisa: TEdit;
    LFResizerVcl1: TLFResizerVcl;
    cxButton1: TcxButton;
    BtnEditar: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dsUsuariosGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState;
      var AHandled: Boolean);
    procedure BtnEditarClick(Sender: TObject);
  private
    FNEZZFactoryUsuario: iNEZZFactoryUsuario;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsUsuario: TNEZZViewsUsuario;

implementation

{$R *.dfm}

{ TNEZZViewsUsuario }

procedure TNEZZViewsUsuario.btnAdicionarClick(Sender: TObject);
begin
  try
    if not Assigned(NEZZViewsUsuarioAdicionar) then
      Application.CreateForm(TNEZZViewsUsuarioAdicionar, NEZZViewsUsuarioAdicionar);

    NEZZViewsUsuarioAdicionar.ShowModal;
    NEZZViewsUsuarioAdicionar.Free;

    CarregarDados;

  finally
    FreeAndNil(NEZZViewsUsuarioAdicionar);
  end;
end;

procedure TNEZZViewsUsuario.btnBuscarClick(Sender: TObject);
begin
  CarregarDados;
end;

procedure TNEZZViewsUsuario.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsUsuario.CarregarDados;
begin
  FNEZZFactoryUsuario := TNEZZFactoryUsuario
    .New
    .DataSource(dsUsuarios)
    .ListarUsuarios;

  with dsUsuariosGridDBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;

procedure TNEZZViewsUsuario.dsUsuariosGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  if MessageDlg('Deseja realmente desativar esse usuário?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if dsUsuarios.DataSet.FieldByName('STATUS').AsInteger <> 0 then
    begin
      MessageDlg('Usuário já foi desativado. Tente outro!', mtInformation, [mbOK], 0);
      Exit;
    end;
    try
      FNEZZFactoryUsuario
        .DesativarUsuario(dsUsuarios.DataSet.FieldByName('ID').AsInteger);
        MessageDlg('Usuário desativado com sucesso!', mtInformation, [mbOK], 0);
    except
    end;
    CarregarDados;
  end;
end;

procedure TNEZZViewsUsuario.BtnEditarClick(Sender: TObject);
begin
  if not Assigned(NEZZViewsUsuarioEditar) then
    Application.CreateForm(TNEZZViewsUsuarioEditar, TNEZZViewsUsuarioEditar);

  TNEZZViewsUsuarioEditar.Usuario(dsUsuarios.DataSet.FieldByName('ID').AsInteger);

  TNEZZViewsUsuarioEditar.ShowModal;
  FreeAndNil(TNEZZViewsUsuarioEditar);

  CarregarDados;
end;

procedure TNEZZViewsUsuario.edPesquisaChange(Sender: TObject);
begin
  if edPesquisa.Text = '' then
  begin
    FNEZZFactoryUsuario := TNEZZFactoryUsuario
      .New
      .DataSource(dsUsuarios)
      .ListarUsuarios;
  end
  else
  begin
    FNEZZFactoryUsuario := TNEZZFactoryUsuario
      .New
      .DataSource(dsUsuarios)
      .FiltrarUsuario(edPesquisa.Text);
  end;
end;

procedure TNEZZViewsUsuario.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
