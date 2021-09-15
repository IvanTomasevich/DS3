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
        self.nombre = input("Nombre: ")
        self.edad = int(input("Edad: "))
    def imprimir(self):
        print(self.nombre, self.edad)

class Empleado(Persona):
    def salario(self):
        self.sueldo = float(input("Sueldo: "))
    def impuestos(self):
        if self.sueldo > 3000:
            print(f"El empleado {self.nombre} debe pagar impuestos")
        else:
            print("No paga impuestos")


pers = Empleado()
pers.salario()
pers.imprimir()
pers.impuestos()
