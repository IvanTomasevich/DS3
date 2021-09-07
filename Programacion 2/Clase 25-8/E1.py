"""
1) Plantear una clase que administre dos listas de 5 nombres de alumnos y sus notas. Mostrar un
menú de opciones que permita:
1- Cargar alumnos.
2- Listar alumnos.
3- Mostrar alumnos con notas mayores o iguales a 7.
4- Finalizar programa.
"""
import os
os.system("cls")

listaAlumnos = []
listaNotas = []

class Alumnos:
    def __init__(self, nombres, notas):
        nombres = []
        notas = []
        for i in range(5):
            self.nombres = nombres.append(nombres)
            self.notas = notas.append(notas)
    def Cargar(self):
        print(nombres)
        print(notas)

def Menu():
    print(" Menus de inicio \n",
    "Por favol elija una opcion")
    print("Cargar alumno (1)")
    print("Listar alumnos (2)")
    print("Alumnos con notas >= 7 (3)")
    print("Para salir oprima (4)")
while True:
    Menu()
    opcionMenu = input("Ingresa tu opcion: ")
    if opcionMenu == "1":
        alu = Menu(input("escriba nombre"), input("Nota: "))
        alu.Cargar()
    elif opcionMenu == "2":
        print("op2")
    elif opcionMenu == "3":
        print("op3")
    elif opcionMenu == "4":
        print("op4")
        break
    else:
        print(input("NInguna opcion es correcta!"))
