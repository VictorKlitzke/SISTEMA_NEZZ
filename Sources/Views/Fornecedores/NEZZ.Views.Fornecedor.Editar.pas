unit NEZZ.Views.Fornecedor.Editar;

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
  cxDBEdit,
  Vcl.ExtCtrls,
  Data.DB,
  NEZZ.Models.Fornecedor;

type
  TNEZZViewsFornecedorEditar = class(TForm)
    dsEditarFornecedor: TDataSource;
    pnContent: TPanel;
    lbNome: TLabel;
    lbRazao: TLabel;
    lbCidade: TLabel;
    lbCEP: TLabel;
    lbCPF: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edNome: TcxDBTextEdit;
    edRazao: TcxDBTextEdit;
    edCNPJ: TcxDBTextEdit;
    edContato: TcxDBTextEdit;
    edCidade: TcxDBTextEdit;
    edBairro: TcxDBTextEdit;
    edEndereco: TcxDBTextEdit;
    edCEP: TcxDBTextEdit;
    pnFooter: TPanel;
    BtnSalvar: TcxButton;
    pnHeader: TPanel;
    lbCRUD: TLabel;
    pnClose: TPanel;
    btnClose: TcxButton;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FNEZZModelsFornecedor: iNEZZModelsFornecedor;
  public
    function Fornecedor(UID: Integer): Integer;
  end;

var
  NEZZViewsFornecedorEditar: TNEZZViewsFornecedorEditar;

implementation

{$R *.dfm}

procedure TNEZZViewsFornecedorEditar.BtnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edRazao.ValidateEdit();
  edCNPJ.ValidateEdit();
  edContato.ValidateEdit();
  edCidade.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCEP.ValidateEdit();

  try
    FNEZZModelsFornecedor.Salvar;

    MessageDlg('Show! Fornecedor atualizado com sucesso', mtInformation, mbYesNo, 0); Close;
  except
    on e: Exception do
    begin
      MessageDlg('Ocorreu um erro ao atualizar o fornecedor' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsFornecedorEditar.FormCreate(Sender: TObject);
begin
  FNEZZModelsFornecedor := TNEZZModelsFornecedor.New.DataSource(dsEditarFornecedor);
end;

function TNEZZViewsFornecedorEditar.Fornecedor(UID: Integer): Integer;
begin
  FNEZZModelsFornecedor.Filtrar('ID' , UID).Editar;
end;

end.
