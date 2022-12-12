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
  NEZZ.Factory.Fornecedor, ACBrBase, ACBrValidador;

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
    Validador: TACBrValidador;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure edCEPExit(Sender: TObject);
    procedure edCNPJExit(Sender: TObject);
    procedure edNomePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edCNPJPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edCEPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edRazaoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edTelefonePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edBairroPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edEnderecoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  private
    procedure LimparEdits;
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
  LimparEdits;
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

procedure TNEZZViewsFornecedorAdicionar.edBairroPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Bairro é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.edCEPExit(Sender: TObject);
begin
  if ( edCEP.Text ) <> '' then
  begin
    Validador.Documento := edCEP.Text;
    Validador.TipoDocto := docCEP;

    if not Validador.Validar then
    begin
      Application.MessageBox('ATENÇÃO: CEP INVALIDO','ERRO CEP', MB_ICONERROR + MB_OK);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsFornecedorAdicionar.edCEPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O CEP é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.edCNPJExit(Sender: TObject);
begin
  if ( edCEP.Text ) <> '' then
  begin
    Validador.Documento := edCEP.Text;
    Validador.TipoDocto := docCEP;

    if not Validador.Validar then
    begin
      Application.MessageBox('ATENÇÃO: CNPJ INVALIDO','ERRO CNPJ', MB_ICONERROR + MB_OK);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsFornecedorAdicionar.edCNPJPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O CNPJ é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.edEnderecoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Endereço é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.edNomePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Fornecedor é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.edRazaoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Nome Fantasia é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.edTelefonePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Telefone é obrigatório';
end;

procedure TNEZZViewsFornecedorAdicionar.LimparEdits;
var
  i:Integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[i] is TcxTextEdit then
    begin
      TcxTextEdit(Components[i]).Text := '';
    end;
end;

end.
