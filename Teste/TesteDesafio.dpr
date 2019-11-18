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
  uTrocoHelper in '..\media\uTrocoHelper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
