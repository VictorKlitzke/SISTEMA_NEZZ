unit NEZZ.Views.Usuario;

interface

uses
<<<<<<< HEAD
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
  cxContainer,
  cxTextEdit,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  NEZZ.Views.Usuario.Adicionar,
  NEZZ.Views.Clientes,
  NEZZ.Factory.Usuario,
  NEZZ.Models.Usuario,
  NEZZ.Services.Conexao,
  NEZZ.Services.Query;
=======
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls;
>>>>>>> TelaLogin

type
  TNEZZViewsUsuario = class(TForm)
    pnHeader: TPanel;
<<<<<<< HEAD
    pnFooter: TPanel;
    pnContent: TPanel;
    GridUsuariosDBTableView1: TcxGridDBTableView;
    GridUsuariosLevel1: TcxGridLevel;
    GridUsuarios: TcxGrid;
    dsUsuarios: TDataSource;
    btnClose: TcxButton;
    pnClone: TPanel;
    btnAdicionar: TcxButton;
    cxButton1: TcxButton;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FNEZZFactoryUsuario: iNEZZFactoryUsuario;
  public
    procedure CarregarDados;
=======
    pnGRID: TPanel;
    pnContent: TPanel;
    pnFooter: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
>>>>>>> TelaLogin
  end;

var
  NEZZViewsUsuario: TNEZZViewsUsuario;

implementation

{$R *.dfm}

<<<<<<< HEAD
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

  with GridUsuariosDBTableView1 do
  begin
    ClearItems;
    DataController.CreateAllItems();
    ApplyBestFit();
  end;
end;
procedure TNEZZViewsUsuario.FormCreate(Sender: TObject);
begin
  CarregarDados;
end;

=======
>>>>>>> TelaLogin
end.
