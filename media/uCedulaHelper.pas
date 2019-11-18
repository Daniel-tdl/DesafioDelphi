unit uCedulaHelper;

interface

uses
  uTroco;

type
  TCedulaHelper = record helper for TCedula
  strict private
  const
    C_STRING_TIPO_CEDULA: array [TCedula] of string = ('ceNota100',
      'ceNota50', 'ceNota20', 'ceNota10', 'ceNota5', 'ceNota2', 'ceMoeda100',
      'ceMoeda50', 'ceMoeda25', 'ceMoeda10', 'ceMoeda5', 'ceMoeda1');
    C_STRING_VALOR_NOTA: array [TCedula] of string = ('100', '50', '20', '10',
      '5', '2', '1', '0.50', '0.25', '0.10', '0.05', '0.01');
  public
    function ToTipoDescricao: string;
    function ToValorDescricao: string;
end;

implementation

{ TCedulaHelper }

function TCedulaHelper.ToTipoDescricao: string;
begin
  Result := C_STRING_TIPO_CEDULA[self];
end;

function TCedulaHelper.ToValorDescricao: string;
begin
  Result := C_STRING_VALOR_NOTA[self];
end;

end.
