"""
Realizar una ventana que ingrese los siguientes datos:
 Apellido y Nombre
 Domicilio
 Teléfono
 DNI
"""
from tkinter import *

window = Tk()
window.iconbitmap("C:/Users/Ivan/Documents/DS3/Programacion 2/Clase 8-9/DS.ico")
window.title("Carga de datos personales")
window.geometry('400x200')

lbl_NA = Label(window, text="Nombre y Apellido")
lbl_NA.grid(column=0, row=0)
txt_NA = Entry(window,width=30)
txt_NA.grid(column=1, row=0)

lbl_DO = Label(window, text="Domicilio")
lbl_DO.grid(column=0, row=1)
txt_DO = Entry(window,width=30)
txt_DO.grid(column=1, row=1)

lbl_TE = Label(window, text="Telefono")
lbl_TE.grid(column=0, row=2)
txt_TE = Entry(window,width=30)
txt_TE.grid(column=1, row=2)

lbl_NA = Label(window, text="DNI")
lbl_NA.grid(column=0, row=3)
txt_NA = Entry(window,width=30)
txt_NA.grid(column=1, row=3)

def clicked():
    btn.configure(text="Carga exitosa!!")

btn = Button(window, text="Cargar", command=clicked)

btn.grid(column=2, row=4)

window.mainloop()
