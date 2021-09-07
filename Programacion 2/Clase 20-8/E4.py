"""
4) Implementar la clase Operaciones. Se deben cargar dos valores enteros por teclado en
el método __init__, calcular su suma, resta, multiplicación y división, cada una en un
método, imprimir dichos resultados.
"""

class Operaciones:

    def __init__(self):
        self.value1 = int(input("Ingrese el primer valos: \n"))
        self.value2 = int(input("Ingrese el segundo valor: \n"))
        self.sum()
        self.res()
        self.mul()
        self.div()
    def sum(self):
        suma = self.value1 + self.value2
        print("la suma de los valores es: " , suma)
    def res(self):
        resta = self.value1 - self.value2
        print("la resta de los valores es: " , resta)
    def mul(self):
        mul = self.value1 * self.value2
        print("el producto de los valores es: " , mul)
    def div(self):
        div = self.value1 / self.value2
        print("la divicion de los valores es: " , int(div))

resultados = Operaciones()
