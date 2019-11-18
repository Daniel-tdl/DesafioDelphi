unit uTrocoHelper;

interface

uses
  uTroco;

type
  TTrocoHelper = class helper for TTroco
  public
    function ToDescricao: string;
  end;

implementation

uses
  System.SysUtils, System.classes, uCedulaHelper;

{ TTrocoHelper }

function TTrocoHelper.ToDescricao: string;
const
  C_QTCEDULA = '#QTCEDULA#';
  C_VALORCEDULA = '#VALORCEDULA#';
  C_TIPOCEDULA = '#TIPOCEDULA#';
  C_DESCRICAO = '    ' + C_QTCEDULA + ' nota de '+ C_VALORCEDULA +' - TTroco('+ C_TIPOCEDULA +', '+ C_QTCEDULA +');';
begin
  Result := C_DESCRICAO;
  Result := Result.Replace(C_QTCEDULA, Self.Quantidade.ToString);
  Result := Result.Replace(C_QTCEDULA, Self.Quantidade.ToString);
  Result := Result.Replace(C_VALORCEDULA, Self.Tipo.ToValorDescricao);
  Result := Result.Replace(C_TIPOCEDULA, Self.Tipo.ToTipoDescricao);
end;

end.
