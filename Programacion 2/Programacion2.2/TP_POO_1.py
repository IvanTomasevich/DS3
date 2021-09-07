"""
1) Plantear una clase que administre dos listas de 5 nombres de alumnos y sus notas. Mostrar un
menú de opciones que permita:
1- Cargar alumnos.
2- Listar alumnos.
3- Mostrar alumnos con notas mayores o iguales a 7.
4- Finalizar programa.
"""

class Alumnos:
    def __init__(self):
        self.alumno = input("Ingrese nombre del alumno: ")
        self.nota = input("Ingrese la nota: ")

    def imprimir(self):
        print("Nombre: ", self.alumno)
        print("Nota: ", self.nota)

"""alumnos = []
nostas = []
for x in range(5):
    alumnoX = Alumnos()
    alumnos.append(alumnoX)"""


alumnoX = Alumnos()
alumnoX.imprimir()
