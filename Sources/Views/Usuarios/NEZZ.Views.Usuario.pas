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
  cxGrid;

type
  TNEZZViewsUsuario = class(TForm)
    pnHeader: TPanel;
    pnFooter: TPanel;
    pnContent: TPanel;
    GridUsuariosDBTableView1: TcxGridDBTableView;
    GridUsuariosLevel1: TcxGridLevel;
    GridUsuarios: TcxGrid;
    dsUsuarios: TDataSource;
    btnClose: TcxButton;
    pnClone: TPanel;
    btnAdicionar: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CarregarDados;
  end;

var
  NEZZViewsUsuario: TNEZZViewsUsuario;

implementation

uses
  NEZZ.Views.Usuario.Adicionar, NEZZ.Views.Clientes;

{$R *.dfm}

procedure TNEZZViewsUsuario.btnAdicionarClick(Sender: TObject);
begin
  try
    if Assigned(NEZZViewsUsuarioAdicionar) then
      if Assigned(NEZZViewsUsuarioAdicionar) then
        Application.CreateForm(TNEZZViewsUsuarioAdicionar, NEZZViewsUsuarioAdicionar);

  NEZZViewsUsuarioAdicionar.ShowModal;
  NEZZViewsUsuarioAdicionar.Free;
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

end;

end.
