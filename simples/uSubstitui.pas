unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  private
    function RetonarSequenciaSubString(const ACountAux: Integer; aStr, aVelho:
        String): string;
    function VerificarPodeSubstituir(const aStr, aVelho, aNovo: String): Boolean;
    function VerificarStringIguais(const sAux, aVelho: string): Boolean;
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

uses
  System.SysUtils, uExcessaoSimples, system.classes;

function TSubstitui.RetonarSequenciaSubString(const ACountAux: Integer; aStr,
    aVelho: String): string;
var
  J: Integer;
  nAux: Integer;
begin
  Result := EmptyStr;
  nAux := ACountAux;
  for J := 1 to Length(aVelho) do
  begin
    Result := Result + aStr[nAux];
    Inc(nAux);
  end;
end;

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  sAux: string;
  nCountAux: Integer;
begin
  if aStr.Trim.IsEmpty then
    raise EStringEntradaIsEmpty.Create;

  if not VerificarPodeSubstituir(aStr, aVelho, aNovo) then
    Exit(aStr);

  nCountAux := 1;
  while nCountAux < (Length(aStr) + 1) do
  begin
    sAux := RetonarSequenciaSubString(nCountAux, aStr, aVelho);

    if VerificarStringIguais(sAux, aVelho) then
    begin
      Result := Result + aNovo;
      nCountAux := nCountAux + Length(aVelho);
    end
    else
    begin
      Result := Result + aStr[nCountAux];
      Inc(nCountAux);
    end;
  end;
end;

function TSubstitui.VerificarPodeSubstituir(const aStr, aVelho, aNovo: String): Boolean;
begin
  Result := Length(aStr) >= Length(aVelho);
end;

function TSubstitui.VerificarStringIguais(const sAux, aVelho: string): Boolean;
begin
  Result := sAux.ToUpper = aVelho.ToUpper;
end;

end.

