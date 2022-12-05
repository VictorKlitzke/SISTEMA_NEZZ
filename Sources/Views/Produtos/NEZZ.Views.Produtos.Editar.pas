unit NEZZ.Views.Produtos.Editar;

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
  cxContainer,
  cxEdit,
  cxTextEdit,
  cxDBEdit,
  NEZZViewBase,
  NEZZ.Models.Produto,
  NEZZ.Factory.Produto,
  NEZZ.Factory.Autenticacao,
  NEZZ.Controllers.Sessao, Data.DB;

type
  TNEZZViewsProdutosEditar = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    BtnSalvar: TcxButton;
    edProduto: TcxDBTextEdit;
    edReferencia: TcxDBTextEdit;
    edQuantidade: TcxDBTextEdit;
    edModelo: TcxDBTextEdit;
    edMarca: TcxDBTextEdit;
    edPrecoVenda: TcxDBTextEdit;
    edPrecoCusto: TcxDBTextEdit;
    edCodBarras: TcxDBTextEdit;
    Label1: TLabel;
    Referencia: TLabel;
    Marca: TLabel;
    Modelo: TLabel;
    Label6: TLabel;
    Quantidade: TLabel;
    Label2: TLabel;
    dsEditarProduto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
  private
    FNEZZModelsProdutos: iNEZZModelsProdutos;
  public
    function Produto(UID: Integer): Integer;
  end;

var
  NEZZViewsProdutosEditar: TNEZZViewsProdutosEditar;

implementation

{$R *.dfm}

procedure TNEZZViewsProdutosEditar.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  edProduto.ValidateEdit();
  edReferencia.ValidateEdit();
  edQuantidade.ValidateEdit();
  edModelo.ValidateEdit();
  edMarca.ValidateEdit();
  edPrecoVenda.ValidateEdit();
  edPrecoCusto.ValidateEdit();
  edCodBarras.ValidateEdit();

  try
    FNEZZModelsProdutos.Salvar;

    MessageDlg('Show! Produto atualizado com sucesso', mtInformation, mbYesNo, 0); Close;
  except
  on e: Exception do
  begin
    MessageDlg('Ocorreu um erro ao atualizar o produto' + #13 + e.message , mtWarning , [mbOk] , 0);
    edProduto.SetFocus;
  end;
  end;
end;

procedure TNEZZViewsProdutosEditar.FormCreate(Sender: TObject);
begin
  FNEZZModelsProdutos := TNEZZModelsProdutos.New.DataSource(dsEditarProduto)
end;

function TNEZZViewsProdutosEditar.Produto(UID: Integer): Integer;
begin
  FNEZZModelsProdutos.Filtrar('ID', UID).Editar;
end;

end.
