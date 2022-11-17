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
  dxLayoutLookAndFeels;

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

end.
