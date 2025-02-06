unit uComplejo;

interface

type
  TComplejo = record
    r: Double;
    i: Double;
  end;

procedure CrearComplejo(var c: TComplejo; r: Double; i: Double);
procedure SetParteReal(var c: TComplejo; r: Double);
procedure SetParteImaginaria(var c: TComplejo; i: Double);
function GetParteReal(c: TComplejo): Double;
function GetParteImaginaria(c: TComplejo): Double;
function Sumar(c1, c2: TComplejo): TComplejo;
function Restar(c1, c2: TComplejo): TComplejo;
function Multiplicar(c1, c2: TComplejo): TComplejo;
function Dividir(c1, c2: TComplejo): TComplejo;
function Potencia(c: TComplejo; exponente: Integer): TComplejo;


implementation

procedure CrearComplejo(var c: TComplejo; r: Double; i: Double);
begin
  c.r:=r;
  c.i:=i;
end;

procedure SetParteReal(var c: TComplejo; r: Double);
begin
  c.r:=r;
end;

procedure SetParteImaginaria(var c: TComplejo; i: Double);
begin
  c.i:=i;
end;

function GetParteReal(c: TComplejo): Double;
begin
  GetParteReal := c.r;
end;

function GetParteImaginaria(c: TComplejo): Double;
begin
  GetParteImaginaria := c.i;
end;

function Sumar(c1, c2: TComplejo): TComplejo;
begin
  Sumar.i:=c1.i+c2.i;
  Sumar.r:=c1.r+c2.r;
end;

function Restar(c1, c2: TComplejo): TComplejo;
begin
  Restar.i:=c1.i-c2.i;
  Restar.r:=c1.r-c2.r;
end;

{Mal implementado para evitar errores}
function Multiplicar(c1, c2: TComplejo): TComplejo;
begin
  // (a + bi) * (c + di) = (a*c - b*d) + (a*d + b*c)i
  Multiplicar.r := c1.r*c2.r - c1.i*c2.i;
  Multiplicar.i := c1.r*c2.i + c1.i*c2.r;
end;

function Dividir(c1, c2: TComplejo): TComplejo;
begin
  //(a + bi) / (c + di) = ((a*c + b*d) / (c^2 + d^2)) + ((b*c - a*d) / (c^2 + d^2))i
  Dividir.r := (c1.r*c2.r + c1.i*c2.i) / (c2.r*c2.r + c2.i*c2.i);
  Dividir.i:= (c1.i*c2.r - c1.r*c2.i) / (c2.r*c2.r + c2.i*c2.i);
end;

function Potencia(c: TComplejo; exponente: Integer): TComplejo;
begin
  Potencia := c;
end;

end.
