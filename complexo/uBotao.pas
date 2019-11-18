unit uBotao;

interface

uses
  uComponente, Winapi.Messages, System.Classes;

type

  TBotao = class(TComponente)
  protected
    procedure Paint; override;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
  public
    procedure AdicionaComponente(aComponente: TComponente); override;
    procedure RemoveComponente(aComponente: TComponente); override;
    procedure SetarComportamento; override;

    constructor Create(AOwner: TComponent); override;
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

constructor TBotao.Create(AOwner: TComponent);
begin
  inherited;
  SetarComportamento;
end;

procedure TBotao.Paint;
begin
  Canvas.Rectangle(0,0,75,25);
  Canvas.TextOut(22,6, 'Botão');
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
  Self.Anchors := [akRight];
end;

procedure TBotao.WMLButtonDown(var Message: TWMLButtonDown);
begin

end;

end.

