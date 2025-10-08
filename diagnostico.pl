% diagnostico.pl
% Sistema experto sencillo para diagnosticar enfermedades leves
% Autor: Fernando David Méndez Viciedo
% Fecha: Octubre 2025
%
% NOTA: Este trabajo es académico. Las recomendaciones son heurísticas y no sustituyen
% una evaluación médica profesional.

% Hechos: enfermedades y sus sintomas (listas sencillas)
enfermedad(gripe, [fiebre, tos, malestar_general, dolor_muscular, congestion]).
enfermedad(resfriado, [tos, estornudos, congestion, odinofagia]).
enfermedad(alergia, [estornudos, congestion, lagrimeo, comezon_nasal]).
enfermedad(gastroenteritis, [dolor_abdominal, vomito, diarrea, fiebre]).
enfermedad(intoxicacion_alimentaria, [vomito, dolor_abdominal, diarrea]).
enfermedad(covid19, [fiebre, tos, dificultad_respiratoria, pierde_gusto_olfato]).

% contar_comunes(+ListaA, +ListaB, -N)
contar_comunes([], _, 0).
contar_comunes([H|T], L, N) :-
    member(H, L), !,
    contar_comunes(T, L, N1),
    N is N1 + 1.
contar_comunes([_|T], L, N) :-
    contar_comunes(T, L, N).

% coincidencia(+SintomasUsuario, +SintomasEnfermedad, -Porcentaje)
coincidencia(SU, SE, Porc) :-
    length(SE, Total),
    Total > 0,
    contar_comunes(SU, SE, Coinc),
    Porc is (Coinc / Total) * 100.

% diagnostico(+SintomasUsuario, -Enfermedad-Porcentaje)
diagnostico(SU, E-P) :-
    enfermedad(E, SE),
    coincidencia(SU, SE, P),
    P >= 34.0.

% diagnosticos_ordenados(+SintomasUsuario, -ListaOrdenada)
diagnosticos_ordenados(SU, Lista) :-
    findall(P-E, (enfermedad(E, S), coincidencia(SU, S, P)), Pairs),
    sort(1, @>=, Pairs, Lista).

% recomendaciones simples
recomendacion(gripe, 'Reposo e hidratacion. Paracetamol si fiebre. Consulte al medico si empeora.').
recomendacion(resfriado, 'Descanso y medidas sintomaticas; consulte si empeora.').
recomendacion(alergia, 'Antihistaminico y evitar alergenos; consulte alergologo si persiste.').
recomendacion(gastroenteritis, 'Hidratacion oral y dieta blanda; consulte si hay signos de deshidratacion.').
recomendacion(intoxicacion_alimentaria, 'Reposo, hidratacion y reponer electrolitos.').
recomendacion(covid19, 'Aislamiento y prueba diagnostica; seguimiento medico.').

% utilidad: diagnosticar y mostrar recomendacion principal
diagnosticar_y_recomendar(SU) :-
    diagnosticos_ordenados(SU, Lista),
    ( Lista = [] ->
        writeln('No se encontro coincidencia suficiente con las enfermedades definidas.');
      writeln('Diagnosticos ordenados (Porcentaje-Enfermedad):'), writeln(Lista),
      Lista = [P-E|_],
      format('Mejor candidato: ~w (~2f%%)~n', [E, P]),
      ( recomendacion(E, R) -> format('Recomendacion: ~w~n', [R]); true )
    ).
