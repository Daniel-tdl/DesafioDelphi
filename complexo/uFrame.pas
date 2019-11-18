unit uFrame;

interface

uses
  uComponente, Winapi.Windows, Vcl.Controls, System.Classes, Vcl.Forms,
  Vcl.Themes, Vcl.Graphics, Vcl.Consts,System.SysConst, System.RTLConsts;

type

  TFrame = class(TComponente)
  protected
    procedure CreateParams(var Params: TCreateParams);
    procedure PaintWindow(DC: HDC);
    procedure SetParent(AParent: TWinControl); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure SetarComportamento; override;
  end;

implementation

uses
  uExcecaoComplexo;

{ TFrame }

constructor TFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csAcceptsControls, csCaptureMouse, csClickEvents,
    csSetCaption, csDoubleClicks, csParentBackground, csPannable, csGestures];
  if (ClassType <> TFrame) and not (csDesignInstance in ComponentState) then
  begin
    if not InitInheritedComponent(Self, TFrame) then
      raise EResNotFound.CreateFmt(SResNotFound, [ClassName]);
  end
  else
  begin
    Width := 320;
    Height := 240;
  end;
end;

procedure TFrame.CreateParams(var Params: TCreateParams);
begin
  inherited;
  if Parent = nil then
    Params.WndParent := Application.Handle;
end;

procedure TFrame.GetChildren(Proc: TGetChildProc; Root: TComponent);
var
  I: Integer;
  OwnedComponent: TComponent;
begin
  inherited GetChildren(Proc, Root);
  if Root = Self then
    for I := 0 to ComponentCount - 1 do
    begin
      OwnedComponent := Components[I];
      if not OwnedComponent.HasParent then Proc(OwnedComponent);
    end;
end;

procedure TFrame.PaintWindow(DC: HDC);
begin
  if (csDesigning in ComponentState) and (Parent is TForm) then
    with TForm(Parent) do
      if (Designer <> nil) and (Designer.GetRoot = Self) and
        (not StyleServices.Enabled ) then
        Designer.PaintGrid;
end;

procedure TFrame.SetarComportamento;
begin
  inherited;
  Self.Anchors := [akLeft, akTop, akBottom, akRight];
end;

procedure TFrame.SetParent(AParent: TWinControl);
var
  LRecreate: Boolean;
begin
  LRecreate := HandleAllocated;
  if LRecreate then
    UpdateRecreatingFlag(True);
  try
    if (Parent = nil) and LRecreate then
      DestroyHandle;
    inherited;
  finally
    if LRecreate then
      UpdateRecreatingFlag(False);
  end;
end;

end.

