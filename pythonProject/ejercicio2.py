"""Se ingresan tres notas de un alumno, si el promedio es mayor o igual a siete
mostrar un mensaje "Promocionado"."""

notas = [int(input("Nota 1: ")),int(input("Nota 2: ")),int(input("Nota 3: "))]
suma = sum(notas)
prom = suma/3
if prom >= 7:
    print("Promocionado")
else:
    print("Tenes que rendir mostro")
