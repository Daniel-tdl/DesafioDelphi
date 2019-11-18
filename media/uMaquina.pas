unit uMaquina;

interface

uses
  uIMaquina, Classes, System.SysUtils, uTroco;

type
  TMaquina = class(TInterfacedObject, IMaquina)
  private
    FbAuterouValor: Boolean;
    function RetornarObjTrocoLista(const ALista: TList; ACedula: TCedula): TTroco;
    procedure AdicionarTroco(var oValor: Double; ACedula: TCedula; ALista: TList);
  public
    function MontarTroco(aTroco: Double): TList;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TList;
var
  oValor: Double;
begin
  oValor := aTroco;
  Result := TList.Create;
  while oValor > 0 do
  begin
    AdicionarTroco(oValor,ceNota100, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceNota50, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceNota20, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceNota10, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceNota5, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceNota2, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceMoeda100, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceMoeda50, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceMoeda25, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceMoeda10, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceMoeda5, Result);
    if FbAuterouValor then
      Continue;
    AdicionarTroco(oValor,ceMoeda1, Result);
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

procedure TMaquina.AdicionarTroco(var oValor: Double; ACedula: TCedula; ALista: TList);
var
  oTroco: TTroco;
begin
  FbAuterouValor := False;;
  if oValor < CValorCedula[ACedula] then
    Exit;

  oTroco := RetornarObjTrocoLista(ALista, ACedula);
  oTroco.Quantidade := oTroco.Quantidade + 1;
  oValor := oValor - CValorCedula[ACedula];
  oValor := StrToFloat(FormatFloat('#.##0,00',oValor));
  FbAuterouValor := True;
end;

end.

