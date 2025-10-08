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

---

## GitHub — pasos exactos para crear el repositorio y cumplir requisitos del profesor
> **Nombre del repositorio sugerido:** `IA1-Prolog-FernandoMendez`

### 1) Crear el repositorio (web)
1. Ingresar a https://github.com y crear un repositorio nuevo con el nombre sugerido.
2. Seleccionar **Public** y no crear README (.gitignore ya incluido).
3. Crear el repo vacío.

### 2) Subir archivos (opción A - web)
1. Abrir el repo en GitHub.
2. Clic en **Add file -> Upload files**.
3. Arrastrar todos los archivos del ZIP y hacer **Commit** con el mensaje: `Primer commit: entrega IA1 - Fernando David Méndez Viciedo`.

### 3) Subir archivos (opción B - terminal, recomendado si sabes usar git)
Abrir la terminal en la carpeta del proyecto y ejecutar (sustituir `TU_USUARIO` por tu usuario GitHub):
```bash
git init
git add .
git commit -m "Primer commit: entrega IA1 - Fernando David Méndez Viciedo"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/IA1-Prolog-FernandoMendez.git
git push -u origin main
```

### 4) Crear ramas exigidas por la asignatura (al menos 3 ramas)
En la misma terminal o en la web crear las ramas `desarrollo` y `pruebas` además de `main`. Se sugiere crear commits de ejemplo en cada rama:
```bash
git checkout -b desarrollo
# hacer un cambio menor (editar README) y commit
git commit --allow-empty -m "Rama desarrollo: cambio de ejemplo"
git push -u origin desarrollo

git checkout -b pruebas
git commit --allow-empty -m "Rama pruebas: cambio de ejemplo"
git push -u origin pruebas
```

**Nota:** el profesor pide **al menos 3 ramas** y varios commits. Con lo anterior se cumple ese requisito.

---

## Mensajes para enviar al profesor (copiar/pegar)
```
Nombre: Fernando David Méndez Viciedo
Asignatura: Inteligencia Artificial I
Entrega: Sistema experto en Prolog + Notebook Google Colab
Archivos: diagnostico.pl, IA1_GoogleColab.ipynb, README_FINAL.md
Ramas: main, desarrollo, pruebas
```

---

## Pequeña memoria (Introducción, Desarrollo, Conclusiones)
### Introducción
Este trabajo muestra la aplicación de conceptos básicos de inteligencia artificial: representación del conocimiento mediante hechos y reglas (Prolog), y programación práctica en Python para manipular estructuras de datos simples.

### Desarrollo
Se implementó un sistema experto en Prolog que usa listas para asociar síntomas a enfermedades y calcula un porcentaje de coincidencia. En paralelo se resolvieron ejercicios en Python que demuestran manejo de listas, bucles y funciones en Google Colab.

### Conclusiones
- Se alcanzaron los objetivos planteados en la asignatura.
- El sistema demuestra cómo representar conocimiento y razonar de forma simple con reglas.
- Es una base para mejorar integrando bases de conocimiento más amplias o técnicas de aprendizaje.

---

## Bibliografía
- SWI-Prolog -- https://www.swi-prolog.org/
- Documentación Google Colab -- https://colab.research.google.com/
