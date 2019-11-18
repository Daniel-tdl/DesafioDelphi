unit uExcessaoSimples;

interface

uses
  System.SysUtils;

type
  EStringEntradaIsEmpty = class(Exception)
    constructor Create;
  end;


implementation

{ EStringEntradaIsEmpty }

constructor EStringEntradaIsEmpty.Create;
const
  C_STRING_ENTRADA_VAZIA = 'Texto de entrada não informado.';
begin
  inherited Create(C_STRING_ENTRADA_VAZIA);
end;

end.
