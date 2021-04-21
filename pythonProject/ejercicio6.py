"""
Ingresan las alturas n personas y se calcula el promedio. Preguntar cuántos datos se ingresarán
"""
cantidad = int(input("Cuantos datos se ingresaran?: "))
suma = 0
contador = 0

while contador < cantidad:
    alturas = float(input("Ingrese la altura de la persona: "))
    suma += alturas
    contador += 1

promedio = suma / cantidad
print("El promedio de altura es:", promedio)