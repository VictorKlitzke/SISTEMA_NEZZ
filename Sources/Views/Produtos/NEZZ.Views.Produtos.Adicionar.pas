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
  Vcl.ExtCtrls,
  NEZZ.Controllers.Sessao,
  NEZZ.Factory.Autenticacao,
  NEZZ.Factory.Produto,
  NEZZ.Models.Produto;

type
  TNEZZViewsProdutosAdicionar = class(TForm)
    pnContent: TPanel;
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
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    FNEZZFactoryProduto: iNEZZFactoryProdutos;
  public
    { Public declarations }
  end;

var
  NEZZViewsProdutosAdicionar: TNEZZViewsProdutosAdicionar;

implementation

{$R *.dfm}

procedure TNEZZViewsProdutosAdicionar.BtnLimparClick(Sender: TObject);
begin
  edProduto.Clear;
  edReferencia.Clear;
  edValorProduto.Clear;
  edMarca.Clear;
  edModelo.Clear;
  edCodBarras.Clear;
  edValorCusto.Clear;
  edQuantidade.Clear;
end;

procedure TNEZZViewsProdutosAdicionar.BtnSalvarClick(Sender: TObject);
begin
  edProduto.ValidateEdit();
  edReferencia.ValidateEdit();
  edValorProduto.ValidateEdit();
  edMarca.ValidateEdit();
  edModelo.ValidateEdit();
  edCodBarras.ValidateEdit();
  edValorCusto.ValidateEdit();
  edQuantidade.ValidateEdit();

  try
    TNEZZFactoryProdutos
      .New
      .AdicionarProduto(
        edProduto.Text,
        edReferencia.Text,
        edValorProduto.Text,
        edMarca.Text,
        edModelo.Text,
        edCodBarras.Text,
        edValorCusto.Text,
        edQuantidade.Text
      );

      MessageDlg('Produto registrado com sucesso!!' , mtInformation , [mbOK] , 0);
      Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do produto!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edProduto.SetFocus;
    end;
  end;
end;

end.
