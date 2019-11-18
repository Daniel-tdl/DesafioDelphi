unit uBotao;

interface

uses
  uComponente;

type

  TBotao = class(TComponente)
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure RemoveComponente(aComponente: TComponente); override;
    procedure SetarComportamento; override;
  end;

implementation

uses
  uExcecaoComplexo, Vcl.Controls;

{ TBotao }

procedure TBotao.AdicionaComponente(aComponente: TComponente);
begin
  raise EErroAdicionarComponente.Create;
  inherited;
end;

procedure TBotao.RemoveComponente(aComponente: TComponente);
begin
  raise EErroRemoverComponente.Create;
  inherited;
end;

procedure TBotao.SetarComportamento;
begin
  inherited;
  Self.Anchors := [akLeft, akRight];
end;

end.

