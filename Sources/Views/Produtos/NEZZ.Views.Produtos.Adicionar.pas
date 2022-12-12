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
    procedure edValorProdutoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edValorCustoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edProdutoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edCodBarrasPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edQuantidadePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edMarcaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edReferenciaPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    FNEZZFactoryProduto: iNEZZFactoryProdutos;
  public
    procedure LimparEdits;
  end;

var
  NEZZViewsProdutosAdicionar: TNEZZViewsProdutosAdicionar;

implementation

{$R *.dfm}

procedure TNEZZViewsProdutosAdicionar.BtnLimparClick(Sender: TObject);
begin
  LimparEdits;
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

procedure TNEZZViewsProdutosAdicionar.edCodBarrasPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Codígo de Barras é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.edMarcaPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'A Marca é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.edProdutoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Produto é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.edQuantidadePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'A Quantidade é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.edReferenciaPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'A Referencia é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.edValorCustoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Preço de custo é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.edValorProdutoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Preço do Produto é obrigatório';
end;

procedure TNEZZViewsProdutosAdicionar.LimparEdits;
var
  i: Integer;
begin
  for I := 0 to ComponentCount -1 do
    if Components[i] is TcxTextEdit then
    begin
      TcxTextEdit(Components[i]).Text := '';
    end;
end;

end.
