program TesteDesafio;

uses
  Vcl.Forms,
  ViewTeste in 'ViewTeste.pas' {Form1},
  uISubstitui in '..\simples\uISubstitui.pas',
  uSubstitui in '..\simples\uSubstitui.pas',
  uExcessaoSimples in '..\simples\uExcessaoSimples.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
