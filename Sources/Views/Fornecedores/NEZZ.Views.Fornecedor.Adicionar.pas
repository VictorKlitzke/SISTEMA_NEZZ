unit NEZZ.Views.Fornecedor.Adicionar;

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
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  Vcl.Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxTextEdit,
  Vcl.ExtCtrls,
  cxClasses,
  dxLayoutLookAndFeels,
  NEZZ.Models.Fornecedor,
  NEZZ.Factory.Fornecedor;

type
  TNEZZViewsFornecedorAdicionar = class(TForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    pnContent: TPanel;
    edNome: TcxTextEdit;
    edRazao: TcxTextEdit;
    edCNPJ: TcxTextEdit;
    edTelefone: TcxTextEdit;
    edCidade: TcxTextEdit;
    edBairro: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edCEP: TcxTextEdit;
    pnFooter: TPanel;
    btnLimpar: TcxButton;
    btnSalvar: TcxButton;
    pnHeader: TPanel;
    lblCRUD: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsFornecedorAdicionar: TNEZZViewsFornecedorAdicionar;

implementation

{$R *.dfm}

procedure TNEZZViewsFornecedorAdicionar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsFornecedorAdicionar.btnLimparClick(Sender: TObject);
begin
  edNome.Clear;
  edRazao.Clear;
  edCNPJ.Clear;
  edTelefone.Clear;
  edCidade.Clear;
  edBairro.Clear;
  edEndereco.Clear;
  edCEP.Clear;
end;

procedure TNEZZViewsFornecedorAdicionar.btnSalvarClick(Sender: TObject);
begin
  edNome.ValidateEdit();
  edRazao.ValidateEdit();
  edCNPJ.ValidateEdit();
  edTelefone.ValidateEdit();
  edCidade.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCEP.ValidateEdit();

  try
    TNEZZFactoryFronecedor
      .New
      .AdicionarFornecedor(
        edNome.Text,
        edRazao.Text,
        edCNPJ.Text,
        edTelefone.Text,
        edCidade.Text,
        edBairro.Text,
        edEndereco.Text,
        edCEP.Text
      );

      MessageDlg('Fornecedor registrado com sucesso!!' , mtInformation , [mbOk] , 0);
      Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do fornecedor!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

end.
