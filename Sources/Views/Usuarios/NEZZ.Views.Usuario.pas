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
  System.UITypes;

type
  TNEZZViewsUsuario = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    dsUsuariosGridDBTableView1: TcxGridDBTableView;
    dsUsuariosGridLevel1: TcxGridLevel;
    dsUsuariosGrid: TcxGrid;
    btnAdicionar: TcxButton;
    dsUsuarios: TDataSource;
    pnPesquisa: TPanel;
    LFResizerVcl1: TLFResizerVcl;
    BtnDeletar: TcxButton;
    BtnEditar: TcxButton;
    BoxPesquisa: TSearchBox;
    PaintBox1: TPaintBox;
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BoxPesquisaChange(Sender: TObject);
  private
    FNEZZFactoryUsuario: iNEZZFactoryUsuario;
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsUsuario: TNEZZViewsUsuario;

implementation

uses
  NEZZ.Views.Usuario.Editar;

{$R *.dfm}

{ TNEZZViewsUsuario }

procedure TNEZZViewsUsuario.BoxPesquisaChange(Sender: TObject);
begin
  if BoxPesquisa.Text = '' then
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
      .FiltrarUsuario(BoxPesquisa.Text);
  end;
end;

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

procedure TNEZZViewsUsuario.BtnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja relamente remover esse usuário?', mtConfirmation, mbYesNo, 0) = mrYes then
  try
    FNEZZFactoryUsuario
      .DeletarUsuario(
        dsUsuarios.DataSet.FieldByName('ID').AsInteger
      );

      MessageDlg('Usuário removido com sucesso!!', mtInformation, [mbOK], 0);
  except
  on e: Exception do
  begin
    MessageDlg('Ocorreu um erro ao deletar o cliente' + #13 + e.message , mtWarning , [mbOk] , 0);
  end;
  end;
  CarregarDados;
end;

procedure TNEZZViewsUsuario.BtnEditarClick(Sender: TObject);
begin
  if not Assigned(NEZZViewsUsuarioEditar) then
    Application.CreateForm(TNEZZViewsUsuarioEditar, NEZZViewsUsuarioEditar);

  NEZZViewsUsuarioEditar.Usuario(dsUsuarios.DataSet.FieldByName('ID').AsInteger);

  NEZZViewsUsuarioEditar.ShowModal;
  FreeAndNil(NEZZViewsUsuarioEditar);

  CarregarDados;
end;

procedure TNEZZViewsUsuario.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

end.
