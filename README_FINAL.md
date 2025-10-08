# Entrega Individual - Inteligencia Artificial I
**Alumno:** Fernando David Méndez Viciedo
**Asignatura:** Inteligencia Artificial I
**Fecha de entrega:** 9 de octubre de 2025 (entrego antes)

---

## Resumen del trabajo
Este repositorio contiene la entrega individual solicitada: un sistema experto sencillo en Prolog para diagnosticar enfermedades leves y un Notebook de Google Colab con ejercicios de práctica (listas, bucles y funciones). Todo está explicado para poder ejecutarlo fácilmente.

---

## Archivos incluidos
- `diagnostico.pl` — Programa Prolog (sistema experto).
- `IA1_GoogleColab.ipynb` — Notebook para Google Colab con ejercicios resueltos.
- `README_FINAL.md` — Este documento (instrucciones y justificación).
- `instrucciones_git.txt` — Comandos git sugeridos para crear ramas y commits.
- `.gitignore` — Archivos a ignorar.

---

## Objetivos
1. Demostrar conocimiento básico de Git y GitHub (crear repositorio, ramas y commits).
2. Implementar un programa en Prolog que resuelva un problema real sencillo.
3. Mostrar manejo básico de Python en Google Colab (listas, bucles, funciones).

---

## Explicación del programa en Prolog (`diagnostico.pl`)
El programa contiene hechos que relacionan enfermedades con una lista de síntomas. Cuando se le pasan los síntomas del usuario, calcula un porcentaje de coincidencia con cada enfermedad y muestra las posibles opciones ordenadas por coincidencia. Además incluye recomendaciones simples para cada enfermedad (solo con fines académicos).

**Puntos a destacar (implementación):**
- Uso de listas y predicados recursivos (`contar_comunes/3`) para contar síntomas en común.
- Cálculo de porcentaje de coincidencia.
- Filtrado por un umbral (34%) para considerar diagnósticos relevantes.
- Predicado `diagnosticar_y_recomendar/1` que imprime la mejor coincidencia y la recomendación asociada.

---

## Cómo ejecutar (SWI-Prolog)
1. Descargar e instalar SWI-Prolog: https://www.swi-prolog.org/
2. Abrir terminal y situarse en la carpeta del proyecto.
3. Iniciar SWI-Prolog con `swipl`.
4. Cargar el programa:
```
?- [diagnostico].
```
5. Consultas de ejemplo:
```
?- diagnostico([tos,fiebre,congestion], R).
?- diagnosticos_ordenados([tos,fiebre,congestion], L).
?- diagnosticar_y_recomendar([tos,fiebre,congestion]).
```

---

## Google Colab (IA1_GoogleColab.ipynb)
Abrir Google Colab (https://colab.research.google.com/), subir el archivo `IA1_GoogleColab.ipynb` y ejecutar las celdas. El Notebook incluye:
- Ejemplo de manejo de listas y comprensión.
- Uso de bucles `for` y cálculo de media.
- Función para buscar subcadenas en una lista de palabras.
- Heurística simple para evaluar síntomas.






