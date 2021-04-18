"""Confeccionar un programa que pida por teclado tres notas de un alumno, calcule
el promedio e imprima alguno de estos mensajes:
Si el promedio es >=7 mostrar "Promocionado".
Si el promedio es >=4 y <7 mostrar "Regular".
Si el promedio es <4 mostrar "Reprobado".
"""

notas = [int(input("Nota 1: ")),int(input("Nota 2: ")),int(input("Nota 3: "))]
suma = sum(notas)
prom = suma/3
if prom >= 7:
    print("Promocionado")
elif prom >= 4 and prom <7:
    print("Regular")
else:
    print("Reprobado")