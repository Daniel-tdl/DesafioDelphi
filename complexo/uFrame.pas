unit uFrame;

interface

uses
  uComponente, Winapi.Windows, Vcl.Controls, System.Classes, Vcl.Forms,
  Vcl.Themes, Vcl.Graphics, Vcl.Consts,System.SysConst, System.RTLConsts;

type

  TFrame = class(TComponente)
  public
    procedure SetarComportamento; override;

    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  uExcecaoComplexo;

{ TFrame }


constructor TFrame.Create(AOwner: TComponent);
begin
  inherited;
  Self.Height := 400;
  Self.Width  := 400;

  Invalidate;
end;

procedure TFrame.SetarComportamento;
begin
  inherited;
  Self.Anchors := [akLeft, akTop, akBottom, akRight];
end;

end.

