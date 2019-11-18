unit uLabel;

interface

uses
  uComponente;

type

  TLabel = class(TComponente)
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure RemoveComponente(aComponente: TComponente); override;
    procedure SetarComportamento; override;
  end;

implementation

{ TLabel }

uses
  uExcecaoComplexo, Vcl.Controls;

procedure TLabel.AdicionaComponente(aComponente: TComponente);
begin
  raise EErroAdicionarComponente.Create;
  inherited;
end;

procedure TLabel.RemoveComponente(aComponente: TComponente);
begin
  raise EErroRemoverComponente.Create;
  inherited;
end;

procedure TLabel.SetarComportamento;
begin
  inherited;
  Self.Anchors := [akLeft, akTop];
end;

end.

