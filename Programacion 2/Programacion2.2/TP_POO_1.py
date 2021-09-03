"""
1) Plantear una clase que administre dos listas de 5 nombres de alumnos y sus notas. Mostrar un
menú de opciones que permita:
1- Cargar alumnos.
2- Listar alumnos.
3- Mostrar alumnos con notas mayores o iguales a 7.
4- Finalizar programa.
"""




class Alumno:

    def __init__(self):
        self.alumno = input("Ingrese nombre alumno: ")
        self.nota = int(input("Ingrese nota alumno: "))
        #self.mostrar()
        #self.aprobados()

    def mostrar(self):
        print("Nombre:", self.alumno)
        print("Nota:", self.nota)

    def aprobados(self):
        if self.nota >= 7:
            print("Nombre:", self.alumno)
            print("Nota:", self.nota)


def Menu():
        print("Menu:")
        print("1- Cargar alumno")
        print("2- Mostrar alumnos")
        print("3- Alumnos aprobados")
        print("4- Salir")

        while True:
            menu()
            opcionMenu = input("Ingrese una opcion: ")
            if opcionMenu == "1":
                alu1 = Alumno()
                alu2 =


