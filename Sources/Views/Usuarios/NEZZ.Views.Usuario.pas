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
    pnGRID: TPanel;
    pnContent: TPanel;
    pnButtons: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
    lbusuarios: TLabel;
    dsCridUsuariosDBTableView1: TcxGridDBTableView;
    dsCridUsuariosLevel1: TcxGridLevel;
    dsCridUsuarios: TcxGrid;
    edNome: TcxTextEdit;
    edLogin: TcxTextEdit;
    edSenha: TcxTextEdit;
    edCidade: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edBairro: TcxTextEdit;
    lbCadastrar: TLabel;
    btnLimpar: TcxButton;
    btnSalvar: TcxButton;
    dsUsuarios: TDataSource;
    btnDeletar: TcxButton;
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsUsuario: TNEZZViewsUsuario;

implementation

{$R *.dfm}

procedure TNEZZViewsUsuario.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
