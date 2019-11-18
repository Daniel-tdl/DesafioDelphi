unit ViewTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, cdSkin_CPJ, cdSkin_CPT, cdSkin_CRC, cdSkin_CRI, cdSkin_CRT,
  cdSkin_CTN, cdSkin_Default, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxClasses, dxLayoutContainer,
  dxLayoutControl, Vcl.StdCtrls, dxLayoutControlAdapters;

type
  TForm1 = class(TForm)
    lgRoot: TdxLayoutGroup;
    lgGrupo: TdxLayoutControl;
    mmoTextoOriginal: TMemo;
    liTextoOriginal: TdxLayoutItem;
    btnDesafio1: TButton;
    liBotaoDesafio1: TdxLayoutItem;
    mmoTextoSubst: TMemo;
    liTextoSubstituido: TdxLayoutItem;
    edtStringVelha: TEdit;
    liSubstringVelha: TdxLayoutItem;
    edtStringNova: TEdit;
    liStringNova: TdxLayoutItem;
    lgDesafio1: TdxLayoutGroup;
    ligSttring: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure btnDesafio1Click(Sender: TObject);
  private
    procedure InicializarForm;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uSubstitui, uISubstitui, uExcessaoSimples;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  InicializarForm;
end;

procedure TForm1.InicializarForm;
begin
  mmoTextoOriginal.Clear;
  mmoTextoSubst.Clear;
  edtStringVelha.Clear;
  edtStringNova.Clear;
end;

procedure TForm1.btnDesafio1Click(Sender: TObject);
const
  C_ERRO_INESPERADO = 'Erro inesperado!';
var
  oSubstitui: ISubstitui;
begin
  try
    mmoTextoSubst.Clear;
    oSubstitui := TSubstitui.Create;
    mmoTextoSubst.Text := oSubstitui.Substituir(mmoTextoOriginal.Text,
     edtStringVelha.Text, edtStringNova.Text);
  except
    on E : EStringEntradaIsEmpty do
      ShowMessage(E.Message);
    on E :  Exception do
      ShowMessage(C_ERRO_INESPERADO) ;
  end;
end;

end.
