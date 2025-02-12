{ Unidad para asignatura con evaluación final }
unit uAsignaturaEvalFinal;

interface
uses uPersona;

const
  MAX_ALUMNOS = 30;

type
  TAsignatura = record
    Profesor: PPersona;
    Alumno: array [1..MAX_ALUMNOS] of PPersona;
    Notas: array [1..MAX_ALUMNOS] of Real;
    NumAlumnos: Integer;
  end;


procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
function AnadirAlumno(var A: TAsignatura; Alumno: PPersona): Boolean;
procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real);
function CalcularNotaFinal(A: TAsignatura; AlumnoDNI: string): Real;

implementation

procedure InicializarAsignatura(var A: TAsignatura; Prof: PPersona);
begin
  A.Profesor:= Prof;
  A.NumAlumnos:= 0;
end;

function AnadirAlumno(var A: TAsignatura; Alumno: PPersona): Boolean;
begin
  A.NumAlumnos += 1;
  if A.NumAlumnos < MAX_ALUMNOS then
     begin
       A.Alumno[A.NumAlumnos] := Alumno;
       AnadirAlumno := True;
     end
  else
    AnadirAlumno := False;
end;

procedure Evaluar(var A: TAsignatura; AlumnoDNI: string; Nota: Real);
var
  i: Integer = 0;
  found: Boolean = False;
begin
  while (i < A.NumAlumnos) and not found do
        begin
          i += 1;
          if A.Alumno[i]^.DNI = AlumnoDNI then
             found := True;
        end;
  if (i > 0) and found then
     A.Notas[i] := Nota;
end;

function CalcularNotaFinal(A: TAsignatura; AlumnoDNI: string): Real;
var
  i: Integer = 0;
  found: Boolean = False;
begin
  while (i < A.NumAlumnos) and not found do
        begin
          i += 1;
          if A.Alumno[i]^.DNI = AlumnoDNI then
             found := True;
        end;
  if (i > 0) and found then
     CalcularNotaFinal := A.Notas[i];
end;

end.
