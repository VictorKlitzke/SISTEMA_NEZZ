unit NEZZ.Views.Produtos.Editar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxDBEdit;

type
  TNEZZViewsProdutosEditar = class(TForm)
    pnContent: TPanel;
    pnFooter: TPanel;
    cxButton1: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    Label1: TLabel;
    Referencia: TLabel;
    Marca: TLabel;
    Modelo: TLabel;
    Label6: TLabel;
    Quantidade: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsProdutosEditar: TNEZZViewsProdutosEditar;

implementation

{$R *.dfm}

end.
