"""
1) Implementar una clase llamada Alumno que tenga como atributos su nombre y su
nota. Definir los métodos para inicializar sus atributos, imprimirlos y mostrar un
mensaje si está regular (nota mayor o igual a 4)
Definir dos objetos de la clase Alumno.
"""
class Alumno:

    def __init__(self):
        self.nombre = input("Nombre del alumno: ")
        self.nota = float(input("Nota del alumno: "))
    def imprimirlos(self):
        print("Nombre: ", self.nombre)
        print("Nota: ", self.nota)
    def estado(self):
        if self.nota >=4:
            print("Regular")
        else:
            print("Libre")
alum1 = Alumno()
alum2 = Alumno()
alum1.imprimirlos()
alum1.estado()
alum2.imprimirlos()
alum2.estado()
