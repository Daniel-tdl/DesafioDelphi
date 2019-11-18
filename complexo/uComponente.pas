unit uComponente;

interface

uses
  Vcl.Controls;

type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class(TWinControl)
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;
  public
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

procedure TComponente.RemoveComponente(aComponente: TComponente);
begin
  Self.RemoveComponente(aComponente);
end;
  
procedure TComponente.SetarComportamento;
begin

end;

end.

