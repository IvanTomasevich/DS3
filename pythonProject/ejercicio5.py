"""
Escribir un programa que solicite ingresar n notas de alumnos y nos informe cuántos tienen notas
mayores o iguales a 7 y cuántos menores. Cuando ingresa nota=0 termina la ejecución.
"""

nota = 1
mayores = 0
menores = 0

while nota != 0: #ingresar n notas de alumnos
    nota = int(input("!PARA TERMINAR OPRIMA 0!\n"
                     "Ingrese la nota: "))
    if nota >= 7: #informe cuántos tienen notas mayores o iguales a 7 y cuántos menores
        mayores += 1
    elif 0 < nota < 7:
        menores += 1
print("",mayores," fueron las notas mayores o igual a 7.\n",
      menores," fueron las notas menores a 7.")
