"""
2) Confeccionar una clase que permita carga el nombre y la edad de una persona.
Mostrar los datos cargados. Imprimir un mensaje si es mayor de edad (edad>=18)
Definir dos objetos de la clase Persona.
"""


class Persona:

    def __init__(self):
        self.nombre = input("Nombre: \n")
        self.edad = int(input("Edad: \n"))
    def imprimirlos(self):
        print("Nombre: ", self.nombre)
        print("Edad: ", self.edad)
    def mayor(self):
        if self.edad >= 18:
            print("La persona es mayor de edad ")
        else:
            print("La persona es menor de 18 años")

pers1 = Persona()
pers2 = Persona()
pers1.imprimirlos()
pers1.mayor()
pers2.imprimirlos()
pers2.mayor()
