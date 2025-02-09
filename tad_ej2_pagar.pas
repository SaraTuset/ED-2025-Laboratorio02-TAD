 { tad_ej2_pagar.pas - Programa Principal }
program tad_ej2_pagar;

uses
   uPagoTarjeta, uPagoTransferencia, uPagoBizum;

var
  cantidad: real;
  pagoValido: boolean;
  opcion: integer;

begin
    
    // Leer monto
    write('Introduce la cantidad a pagar: ');
    readln(cantidad);
    
    // Seleccionar método de pago
    writeln('Selecciona el método de pago:');

    writeln('1. Tarjeta de crédito');
    writeln('2. Transferencia bancaria');
    writeln('3. Bizum');
    write('Opción: ');
    readln(opcion);

    // Realizar pago
    case opcion of
        1: 
        begin
          { Llamada a IniciarPago, RealizarPago y ValidarPago de uPagoTarjeta }
        end;
        2:
        begin
          { Llamada a IniciarPago, RealizarPago y ValidarPago de uPagoTransferencia }
        end;
        3:
        begin
          { Llamada a IniciarPago, RealizarPago y ValidarPago de uPagoBizum }
        end;

        else
        begin
          writeln('Opción no válida');
        end;

        if pagoValido then
        begin
          writeln('Pago realizado correctamente');
        end
        else
        begin
          writeln('Pago no válido');
        end;
    end;
end.
