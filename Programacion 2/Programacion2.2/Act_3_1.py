"""
1- Plantear una clase Persona que contenga dos atributos: nombre y edad. Definir como responsabilidades
la carga por teclado y su impresión.
En el bloque principal del programa definir un objeto de la clase persona y llamar a sus métodos.
Declarar una segunda clase llamada Empleado que herede de la clase Persona y agregue un atributo
sueldo y muestre si debe pagar impuestos (sueldo superior a 3000)
También en el bloque principal del programa crear un objeto de la clase Empleado.
"""


class Persona:
    def __init__(self):
        self.nombre = input("Ingrese el nombre: ")
        self.edad = input("Ingrese la edad: ")
        self.imprime()

    def imprime(self):
        print("Nombre:", self.nombre)
        print("Edad:", self.edad)


class Empleado(Persona):
    def sueldo(sueldo):
        sueldo = int(input("Ingrese monto sueldo: "))


persona1 = Persona()
persona1.nombre()
persona1.edad()

empleado1 = Empleado()
empleado1.sueldo
