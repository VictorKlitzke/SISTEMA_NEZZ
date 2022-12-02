unit NEZZ.Views.Vendas.Adicionar.Produto;

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
  Vcl.ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TNEZZViewsAdicionarProdutoVendas = class(TForm)
    pnFooter: TPanel;
    pnHeader: TPanel;
    pnMenu: TPanel;
    pnPreco: TPanel;
    pnClose: TPanel;
    btnClose: TcxButton;
    BtnAddProduto: TcxButton;
    pnExtraColor: TPanel;
    pnExtraColors: TPanel;
    Label1: TLabel;
    edValorProduto: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    edTotal: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    pnProduto: TPanel;
    procedure btnCloseClick(Sender: TObject);
    procedure BtnAddProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsAdicionarProdutoVendas: TNEZZViewsAdicionarProdutoVendas;

implementation

{$R *.dfm}

procedure TNEZZViewsAdicionarProdutoVendas.BtnAddProdutoClick(Sender: TObject);
begin
  pnProduto.Show;
end;

procedure TNEZZViewsAdicionarProdutoVendas.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
