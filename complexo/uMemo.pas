unit uMemo;

interface

uses
  uComponente;

type

  TMemo = class(TComponente)
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure RemoveComponente(aComponente: TComponente); override;
    procedure SetarComportamento; override;
  end;

implementation

uses
  uExcecaoComplexo, Vcl.Controls;


{ TMemo }

procedure TMemo.AdicionaComponente(aComponente: TComponente);
begin
  raise EErroAdicionarComponente.Create;
  inherited;
end;

procedure TMemo.RemoveComponente(aComponente: TComponente);
begin
  raise EErroRemoverComponente.Create;
  inherited;
end;

procedure TMemo.SetarComportamento;
begin
  inherited;
  Self.Anchors := [akLeft, akTop, akBottom, akRight];
end;

end.

