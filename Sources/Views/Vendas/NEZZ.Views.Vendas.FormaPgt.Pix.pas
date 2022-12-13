unit NEZZ.Views.Vendas.FormaPgt.Pix;

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
  dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TNEZZViewsVendasFormaPgtPix = class(TForm)
    pnHeader: TPanel;
    pnContent: TPanel;
    pnMenu: TPanel;
    Image1: TImage;
    edValor: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NEZZViewsVendasFormaPgtPix: TNEZZViewsVendasFormaPgtPix;

implementation

{$R *.dfm}

end.
