unit uExcecaoComplexo;

interface

uses
  System.SysUtils;

type
  EErroAdicionarComponente = class(Exception)
    constructor Create;
  end;

  EErroRemoverComponente = class(Exception)
    constructor Create;
  end;

implementation

{ EErroAdicionarComponente }

constructor EErroAdicionarComponente.Create;
const
  C_ERRO_ADICIONAR_COMPONENTE = 'Não permitido inserir outros componentes.';
begin
  inherited Create(C_ERRO_ADICIONAR_COMPONENTE);
end;

{ EErroRemoverComponente }

constructor EErroRemoverComponente.Create;
const
  C_ERRO_REMOVER_COMPONENTE = 'Não permitido remover outros componentes.';
begin
  inherited Create(C_ERRO_REMOVER_COMPONENTE);
end;

end.
