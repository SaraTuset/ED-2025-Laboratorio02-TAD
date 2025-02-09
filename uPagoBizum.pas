unit uPagoBizum;

interface

procedure IniciarPago;
procedure RealizarPago(monto: real);
function ValidarPago: boolean;

implementation

procedure IniciarPago;
begin
  Write('Escriba su teléfono: ');
  Readln();
end;

procedure RealizarPago(monto: real);
begin
  WriteLn('Se esta realizando un pago de ', monto, ' por Bizum.');
end;

function ValidarPago: boolean;
var
  telefono: String;
begin
  Write('Escriba su teléfono: ');
  Readln(telefono);
  ValidarPago := Length(telefono) = 9;
end;

end.
