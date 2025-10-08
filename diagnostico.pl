% programa_medico.pl
% Sistema de diagnóstico médico básico

% Base de conocimientos - Síntomas y enfermedades
sintoma(fiebre).
sintoma(tos).
sintoma(dolor_cabeza).
sintoma(dolor_garganta).
sintoma(congestion_nasal).
sintoma(fatiga).
sintoma(dolor_muscular).

% Enfermedades y sus síntomas
enfermedad(gripe, [fiebre, tos, dolor_cabeza, dolor_muscular, fatiga]).
enfermedad(resfriado, [tos, dolor_garganta, congestion_nasal]).
enfermedad(amigdalitis, [fiebre, dolor_garganta]).
enfermedad(migrana, [dolor_cabeza]).

% Reglas de diagnóstico
diagnostico(Paciente, Enfermedad) :-
    enfermedad(Enfermedad, Sintomas),
    tiene_sintomas(Paciente, Sintomas).

tiene_sintomas(Paciente, [Sintoma|Resto]) :-
    sintoma_paciente(Paciente, Sintoma),
    tiene_sintomas(Paciente, Resto).
tiene_sintomas(_, []).

% Base de datos de pacientes y sus síntomas
sintoma_paciente(juan, fiebre).
sintoma_paciente(juan, tos).
sintoma_paciente(juan, dolor_cabeza).
sintoma_paciente(juan, dolor_muscular).

sintoma_paciente(maria, tos).
sintoma_paciente(maria, dolor_garganta).
sintoma_paciente(maria, congestion_nasal).

sintoma_paciente(carlos, dolor_cabeza).

% Reglas de tratamiento
tratamiento(gripe, 
    ['Reposo en cama', 'Líquidos abundantes', 'Antitérmicos', 'Analgésicos']).
tratamiento(resfriado,
    ['Descongestionantes', 'Analgésicos suaves', 'Reposo']).
tratamiento(amigdalitis,
    ['Antibióticos (si es bacteriana)', 'Analgésicos', 'Gárgaras']).
tratamiento(migrana,
    ['Analgésicos específicos', 'Reposo en lugar oscuro']).

% Consulta completa de diagnóstico y tratamiento
consulta_medica(Paciente, Enfermedad, Tratamiento) :-
    diagnostico(Paciente, Enfermedad),
    tratamiento(Enfermedad, Tratamiento).

% Predicado para agregar nuevos síntomas
agregar_sintoma(Paciente, Sintoma) :-
    assertz(sintoma_paciente(Paciente, Sintoma)).

% Predicado para listar todas las enfermedades posibles
listar_enfermedades :-
    enfermedad(Enf, Sintomas),
    write('Enfermedad: '), write(Enf), nl,
    write('Síntomas: '), write(Sintomas), nl, nl,
    fail.
listar_enfermedades.
