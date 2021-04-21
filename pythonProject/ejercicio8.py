"""
Se necesita realizar un control de edad de ingreso al Sistema de una empresa.
Mientras la edad sea entre 18 y 65 pueden acceder al sistema caso contrario mostrar Mensaje de Acceso Denegado.
"""

edad = int(input("Ingresar edad: "))

if 18 <= edad <= 65:
    print("Acceso exitoso")
else:
    print("Acceso Denegado")