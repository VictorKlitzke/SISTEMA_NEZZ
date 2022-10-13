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
  NEZZ.Factory.Cliente,
  NEZZ.Models.Cliente;

type
  TNEZZViewsClienteAdicionar = class(TForm)
    edCliente: TcxTextEdit;
    edRazao: TcxTextEdit;
    edCPF: TcxTextEdit;
    edTelefone: TcxTextEdit;
    edCidade: TcxTextEdit;
    edBairro: TcxTextEdit;
    edEndereco: TcxTextEdit;
    edCEP: TcxTextEdit;
    pnHeader: TPanel;
    lblCRUD: TLabel;
    btnClose: TcxButton;
    procedure FormShow(Sender: TObject);
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
  edCliente.ValidateEdit();
  edRazao.ValidateEdit();
  edCEP.ValidateEdit();
  edTelefone.ValidateEdit();
  edBairro.ValidateEdit();
  edEndereco.ValidateEdit();
  edCidade.ValidateEdit();

  try
     TNEZZFactoryCliente
      .New
      .AddCliente(
        edCliente.Text,
        edRazao.Text,
        edCEP.Text,
        edTelefone.Text,
        edCidade.Text,
        edBairro.Text,
        edTelefone.Text,
        edCPF.Text
        );

    MessageDlg('Cliente registrado com sucesso' , mtInformation , [mbOk] , 0);
    Close;
  except
    on e: Exception do
    begin
      MessageDlg('Erro ao fazer registro do cliente!' + #13 + e.message , mtWarning , [mbOk] , 0);
      edCliente.SetFocus;
    end;
  end;
end;

procedure TNEZZViewsClienteAdicionar.edBairroPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edCEPPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edCidadePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edClientePropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edCNPJPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edEnderecoPropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edRazaoPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

procedure TNEZZViewsClienteAdicionar.edTelefonePropertiesValidate(
  Sender: TObject;
  var DisplayValue: Variant;
  var ErrorText: TCaption;
  var Error: Boolean);
begin
  Error := DisplayValue = '';
  ErrorText := 'O usuário é obrigatório';
end;

end.
