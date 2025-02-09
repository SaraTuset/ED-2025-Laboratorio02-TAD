unit uPagoTarjeta;

interface

procedure IniciarPago;
procedure RealizarPago(monto: real);
function ValidarPago: boolean;

implementation

procedure IniciarPago;
begin
  Write('Escriba su numero de tarjeta: ');
  Readln();
  Write('Escriba su fecha de caducidad: ');
  Readln();
end;

procedure RealizarPago(monto: real);
begin
  WriteLn('Se esta realizando un pago de ', monto, ' por tarjeta.');
end;

function ValidarPago: boolean;
var
  tarjeta: String;
begin
  Write('Escriba su numero de tarjeta: ');
  Readln(tarjeta);
  Write('Escriba su fecha de caducidad: ');
  Readln();
  ValidarPago := Length(tarjeta) = 16;
end;

end.
