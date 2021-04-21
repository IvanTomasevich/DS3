"""
Un postulante a un empleo, realiza un test de capacitación, se obtuvo la siguiente información:
cantidad total de preguntas que se le realizaron y la cantidad de preguntas que contestó correctamente.
Se pide confeccionar un programa que ingrese los dos datos por teclado e informe el nivel del mismo según
el porcentaje de respuestas correctas que ha obtenido, y sabiendo que:

Nivel máximo: Porcentaje>=90%.
Nivel medio:Porcentaje>=75% y <90%.
Nivel regular: Porcentaje>=50% y <75%.
Fuera de nivel: Porcentaje<50%.
"""
#cantidad total de preguntas que se le realizaron
preguntas = int(input("Cantidad de preguntas realizadas: "))
#la cantidad de preguntas que contestó correctamente
preguntasCorrectas = int(input("Cantidad de preguntas correctas: "))
#porcentaje de respuestas correctas que ha obtenido
porcentaje = preguntasCorrectas/preguntas*100

if porcentaje >= 90:
    print("Nivel Móximo.")
elif porcentaje>=75 and porcentaje <90:
    print("Nivel Medio.")
elif porcentaje>=50 and porcentaje <75:
    print("Nivel Regular.")
else:
    print("Fuera de nivel.")

