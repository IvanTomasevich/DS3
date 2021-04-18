"""Realizar un programa que solicite la carga por teclado de dos números, si el
primero es mayor al segundo informar su suma y diferencia, en caso contrario
informar el producto y la división del primero respecto al segundo."""

a = int(input('Ingrese el primer numero: '))
b = int(input('Ingrese el segundo numero: '))
suma = a+b
resta = a-b
prod = a*b
div = a/b
if a > b:
    print('la suma es: '+ str(suma)+ ' y la diferencia es: '+ str(resta))
else:
    print('el producto es: '+ str(prod) + ' y la division es: ' + str(div))