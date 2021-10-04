"""
1. Mostrar una ventana y en su interior dos botones y una label. La
label muestra inicialmente el valor 1. Cada uno de los botones
permiten incrementar o decrementar en uno el contenido de la
label.
"""

from tkinter import *


class App:
    def __init__(self):
        self.var = 0
        self.window = Tk()
        self.window.title("Up and Down")
        self.window.geometry('400x200')

        self.lbl = Label(self.window, text=self.var)
        self.lbl.grid(column=0, row=0)

        self.btup = Button(self.window, text="Incrementar", command=self.up)
        self.btup.grid(column=0, row=1)

        self.btdw = Button(self.window, text="Decrementar", command=self.down)
        self.btdw.grid(column=0, row=2)

        self.window.mainloop()

    def up(self):
        self.var += 1
        self.lbl.config(text=self.var)

    def down(self):
        self.var -= 1
        self.lbl.config(text=self.var)


applicacion = App()
