unit NEZZ.Views.Produtos.Adicionar;

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
  Vcl.ExtCtrls;

type
  TNEZZViewsProdutosAdicionar = class(TForm)
    pnContent: TPanel;
    pnHeader: TPanel;
    pnFooter: TPanel;
    BtnSalvar: TcxButton;
    BtnLimpar: TcxButton;
    edProduto: TcxTextEdit;
    edReferencia: TcxTextEdit;
    edValorProduto: TcxTextEdit;
    edMarca: TcxTextEdit;
    edModelo: TcxTextEdit;
    edCodBarras: TcxTextEdit;
    edValorCusto: TcxTextEdit;
    edQuantidade: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsProdutosAdicionar: TNEZZViewsProdutosAdicionar;

implementation

{$R *.dfm}

end.
