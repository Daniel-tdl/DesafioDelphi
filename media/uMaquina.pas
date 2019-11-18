unit uMaquina;

interface

uses
  uIMaquina, Classes, System.SysUtils, uTroco;

type
  TMaquina = class(TInterfacedObject, IMaquina)
  private
//    FbAuterouValor: Boolean;
    function RetornarObjTrocoLista(const ALista: TList; ACedula: TCedula): TTroco;
    function AdicionarTroco(var oValor: Double; ACedula: TCedula; ALista: TList):
        Boolean;
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  oValor: Double;
  oCedulas: TCedula;
begin
  oValor := aTroco;
  Result := TList.Create;
  while oValor > 0 do
  begin
    for oCedulas := ceNota100 to ceMoeda1 do
    begin
      if AdicionarTroco(oValor,oCedulas, Result) then
        Break;
    end;
  end;
end;

function TMaquina.RetornarObjTrocoLista(const ALista: TList; ACedula: TCedula): TTroco;
var
  nContador: Integer;
begin
  Result := nil;
  for nContador := 0 to Pred(ALista.Count) do
  begin
    Result := TTroco(ALista[nContador]);
    if Result.Tipo = ACedula then
      Break
    else
      Result := nil;
  end;

  if Assigned(Result) then
    Exit;

  Result := TTroco.Create(ACedula, 0);
  ALista.Add(Result);
end;

function TMaquina.AdicionarTroco(var oValor: Double; ACedula: TCedula; ALista: TList): Boolean;
var
  oTroco: TTroco;
begin
  Result := False;
  if oValor < CValorCedula[ACedula] then
    Exit;

  oTroco := RetornarObjTrocoLista(ALista, ACedula);
  oTroco.Quantidade := oTroco.Quantidade + 1;
  oValor := oValor - CValorCedula[ACedula];
  oValor := StrToFloat(FormatFloat('###0.00',oValor));
  Result := True;
end;

end.

