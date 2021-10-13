"""
2) Confeccionar una clase que administre una agenda personal. Se debe almacenar el nombre de la
persona, teléfono y mail
Debe mostrar un menú con las siguientes opciones:
1- Carga de un contacto en la agenda.
2- Listado completo de la agenda.
3- Consulta ingresando el nombre de la persona.
4- Modificación de su teléfono y mail.
5- Finalizar programa.
"""
import os


class Agenda:

    def __init__(self):
        self.contactos = {}

    def add_contact(self):  # carga contacto
        print()
        print("Ingrese un contacto")
        nombre = input("Nombre: ")
        telefono = input("Telefono: ")
        email = input("Email: ")
        self.contactos[nombre] = telefono, email

    def print_agenda(self):  # imprime agenda completa

        print(self.contactos)

    def consulta_name(self):  # consulta si existe un nombre
        nombre = input("Consulatar el nombre: ")
        if nombre in self.contactos:
            print(f"Ya existe {nombre} en los contactos")
        else:
            print(f"El contacto {nombre} no existe")

    def mod_cel_email(self):
        nombre = input("Nombre del contacto para actualizar: ")
        if nombre not in self.contactos:
            print(f"No existe {nombre} en los contactos")
        else:
            telefono = input("Nuevo Telefono: ")
            email = input("Nuevo Email: ")
            self.contactos[nombre] = telefono, email


def menu():
    print()
    print("#####    Menus de inicio     #####")
    print("#                                #")
    print("#  ¡Por favol elija una opcion!  #")
    print("#                                #")
    print("##################################")
    print("Cargar contacto ____ (1)")
    print("Listar agenda ______ (2)")
    print("Consultar x nombre _ (3)")
    print("Modifica Cel Email _ (4)")
    print("Para salir oprima __ (5)")
    print()


AG = Agenda()

while True:
    menu()
    opcion_menu = input("    Ingresa tu opcion: ")
    if opcion_menu == "1":
        os.system("cls")
        AG.add_contact()
    elif opcion_menu == "2":
        os.system("cls")
        AG.print_agenda()
    elif opcion_menu == "3":
        os.system("cls")
        AG.consulta_name()
    elif opcion_menu == "4":
        os.system("cls")
        AG.mod_cel_email()
    elif opcion_menu == "5":
        os.system("cls")
        print()
        print("Gracias!")
        break
    else:
        print(input("NInguna opcion es correcta!"))
