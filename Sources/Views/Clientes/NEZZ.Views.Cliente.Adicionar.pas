unit NEZZ.Views.Cliente.Adicionar;

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
  NEZZ.Services.Conexao,
  NEZZ.Services.Query,
  Data.DB,
  NEZZ.Controllers.Sessao,
  NEZZ.Models.Cliente,
  ConexaoDados,
  dxLayoutcxEditAdapters,
  dxLayoutContainer,
  cxClasses,
  dxLayoutLookAndFeels,
  dxLayoutControl;

type
  TNEZZViewsClienteAdicionar = class(TForm)
    pnHeader: TPanel;
    lblCRUD: TLabel;
    btnClose: TcxButton;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel;
    edNome: TcxTextEdit;
    edRazao: TcxTextEdit;
    edCPF: TcxTextEdit;
    edContato: TcxTextEdit;
    edCidade: TcxTextEdit;
    edBairro: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edCEP: TcxTextEdit;
    edEmail: TcxTextEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edClientePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edRazaoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edCNPJPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edTelefonePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edCidadePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edBairroPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edCEPPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure edEnderecoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant;
      var ErrorText: TCaption;
      var Error: Boolean);
    procedure btnDesfazerClick(Sender: TObject);

  private
    FNEZZQuery: iNEZZServicesCadastrar;

  public
  end;

var
  NEZZViewsClienteAdicionar: TNEZZViewsClienteAdicionar;

implementation

uses
    NEZZ.Factory.Cliente;

{$R *.dfm}

{ TNEZZViewsClienteForm }

procedure TNEZZViewsClienteAdicionar.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNEZZViewsClienteAdicionar.btnDesfazerClick(Sender: TObject);
begin
  FNEZZQuery
    .Cancelar;

  ModalResult := mrCancel;
end;

procedure TNEZZViewsClienteAdicionar.btnSalvarClick(Sender: TObject);
begin
  inherited;
  edNome.ValidateEdit();
  edRazao.ValidateEdit();
  edCPF.ValidateEdit();
  edContato.ValidateEdit();
  edEmail.ValidateEdit();
  edCidade.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCEP.ValidateEdit();

  try
     TNEZZFactoryCliente
      .New
      .AdicionarCliente(
        edNome.Text,
        edRazao.Text,
        edCEP.Text,
        edContato.Text,
        edEmail.Text,
        edCidade.Text,
        edBairro.Text,
        edEndereco.Text,
        edCPF.Text
      );

    MessageDlg('Cliente registrado com sucesso' , mtInformation , [mbOk] , 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do cliente!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edNome.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteAdicionar.edBairroPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Bairro é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edCEPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O CEP é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edCidadePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'A Cidade é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edClientePropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Cliente é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edCNPJPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O CPF é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edEnderecoPropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Endereço é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edRazaoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Razão Social é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edTelefonePropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O Contato é obrigatório';
end;

end.
