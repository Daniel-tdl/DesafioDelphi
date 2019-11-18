program TesteDesafio;

uses
  Vcl.Forms,
  ViewTeste in 'ViewTeste.pas' {Form1},
  uISubstitui in '..\simples\uISubstitui.pas',
  uSubstitui in '..\simples\uSubstitui.pas',
  uExcessaoSimples in '..\simples\uExcessaoSimples.pas',
  uIMaquina in '..\media\uIMaquina.pas',
  uMaquina in '..\media\uMaquina.pas',
  uTroco in '..\media\uTroco.pas',
  uCedulaHelper in '..\media\uCedulaHelper.pas',
  uTrocoHelper in '..\media\uTrocoHelper.pas',
  uBotao in '..\complexo\uBotao.pas',
  uComponente in '..\complexo\uComponente.pas',
  uExcecaoComplexo in '..\complexo\uExcecaoComplexo.pas',
  uFrame in '..\complexo\uFrame.pas',
  uLabel in '..\complexo\uLabel.pas',
  uMemo in '..\complexo\uMemo.pas',
  uTesteDesafio3 in 'uTesteDesafio3.pas' {frmDesafio3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmDesafio3, frmDesafio3);
  Application.Run;
end.
