{ Unidad base para personas }
unit uPersona;

interface

type
  TRol = (rProfesor, rAlumno);

  TPersona = record
    nombre: String;
    apellido : String;
    DNI: String;
    FechaNacimiento: String;
    Rol: TRol;
  end;

  PPersona = ^TPersona;

procedure CrearPersona(var persona: TPersona; Nombre, Apellido, DNI, FechaNacimiento: String; Rol: TRol);
procedure MostrarPersona(P: TPersona);

implementation

procedure CrearPersona(var persona: TPersona; Nombre, Apellido, DNI, FechaNacimiento: String; Rol: TRol);
begin
  persona.nombre:= Nombre;
  persona.apellido:= Apellido;
  persona.DNI:= DNI;
  persona.FechaNacimiento:=FechaNacimiento;
  persona.Rol:=Rol;
end;

procedure MostrarPersona(P: TPersona);
begin
  if p.Rol = rProfesor then
     WriteLn('Profesor', p.nombre, p.apellido)
  else
      WriteLn('Alumno', p.nombre, p.apellido);
  WriteLn('DNI: ', p.DNI);
  WriteLn('Nacimiento: ', p.FechaNacimiento);
end;

end.
