unit uTesteDesafio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmDesafio3 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesafio3: TfrmDesafio3;

implementation

uses
  uFrame, uBotao;

{$R *.dfm}

procedure TfrmDesafio3.FormCreate(Sender: TObject);
var
  oBotao: TBotao;
  oFrame: TFrame;
begin
  oBotao := TBotao.Create(self);
  oBotao.Parent := Self;
  oBotao.Visible := True;
end;

end.
