unit uComponente;

interface

uses
  Vcl.Controls, Vcl.Graphics, system.SysUtils, System.Classes;

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class(TGraphicControl)
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;

    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;
    procedure SetarComportamento; virtual;
  published
    property Align;
    property Anchors;
  end;

implementation

procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin
  Self.InsertComponent(aComponente);
end;

constructor TComponente.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  Self.Height := 25;
  Self.Width  := 75;

  Invalidate;
end;

procedure TComponente.Paint;
begin
  inherited;
end;

procedure TComponente.RemoveComponente(aComponente: TComponente);
begin
  Self.RemoveComponente(aComponente);
end;
  
procedure TComponente.SetarComportamento;
begin

end;

end.

