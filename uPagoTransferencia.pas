unit uPagoTransferencia;

interface

procedure IniciarPago;
procedure RealizarPago(monto: real);
function ValidarPago: boolean;

implementation

procedure IniciarPago;
begin
  Write('Escriba su numero de IBAN: ');
  Readln();

end;

procedure RealizarPago(monto: real);
begin
  WriteLn('Se esta realizando un pago de ', monto, ' por transferencia.');
end;

function ValidarPago: boolean;
var
    IBAN: String;
begin
  Write('Escriba su numero de IBAN: ');
  Readln(IBAN);
  RealizarPago := Length(tarjeta) = 24;
end;

end.
