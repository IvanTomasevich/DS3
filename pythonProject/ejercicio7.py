"""
En una empresa trabajan n empleados cuyos sueldos oscilan entre $100 y $500, realizar un programa que
lea los sueldos que cobra cada empleado e informe cuántos empleados cobran entre $100 y $300 y cuántos
cobran más de $300. Además el programa deberá informar el importe total que gasta la empresa en sueldos
al personal.
"""
cantidad = int(input("Ingrese  la cantidad de empleados: "))
bajo = 0
alto = 0
sueldos = 0
totalSueldos = 0

while sueldos < cantidad:
    sueldo = int(input("Ingrese sueldo del empleado: "))
    totalSueldos += sueldo
    if 100 <= sueldo < 300:
        bajo += 1
    elif sueldo >= 300:
        alto += 1
    else:
        print("El numero ingresado es menor a 100")
        continue
    sueldos += 1

print("","Empleados que cobran mas de $300:", alto, "\n",
      "Empleados que cobran entre $100 y $300:", bajo, "\n",
      "Importe total de sueldos:", totalSueldos)
