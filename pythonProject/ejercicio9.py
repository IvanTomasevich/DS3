"""
Una planta que fabrica perfiles de hierro posee un lote de n piezas.
Confeccionar un programa que pida ingresar por teclado la cantidad de piezas a procesar y
luego ingrese la longitud de cada perfil;
sabiendo que la pieza cuya longitud esté comprendida en el rango de 1.20 y 1.30 son aptas.
Imprimir por pantalla la cantidad de piezas aptas que hay en el lote.
"""

cantidad = int(input("Ingrese cantidad de piezas: "))
contador = 0
aptas = 0

while contador < cantidad:
    pieza = float(input("Ingrese en m la longitud del perfil: "))
    if 1.20 <= pieza <= 1.30:
        aptas += 1
    contador += 1

print("Cantidad de piezas aptas que hay en el lote:", aptas)