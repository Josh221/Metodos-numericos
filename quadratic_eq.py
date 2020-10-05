from math import sqrt

print("Considere la expresión ax^2+bx+c=0")

while(True):
    try:
        a1 = float(input("Introduzca el coeficiente de la variable cuadratica 'a': "))
        a = round(a1,4)
        break
    except:
        print("Introduce un número real")
while(True):
    try:
        b1 = float(input("Introduzca el coeficiente de la variable lineal 'b' : "))
        b = round(b1,4)
        break
    except:
        print("Introduce un número real")
while(True):
    try:
        c1 = float(input("Introduzca el coeficiente de la constante 'c' : "))
        c = round(c1,4) 
        break
    except:
        print("Introduce un número real")

print(f"La expresión es ({a}) X^2 + ({b}) X + {c} = 0")

if b**2 - 4*a*c >= 0:
    if a != 0:
        x1 = -2*c/( b + sqrt( b**2 - 4*a*c ) )
        x2 = -2*c/( b - sqrt( b**2 - 4*a*c ) )
        x1_round = round(x1,4)
        x2_round = round(x2,4)
        print(f"La solución positiva x1 = {x1_round} \nLa solución negativa x2 = {x2_round}")
    else:
        if b != 0:
            if c == 0:
                print("La solución es x = 0")
            else:
                x = -c/b
                print(f"La solución es {x}")
        else:
            if c != 0:
                print("La ecuación no tiene solución")
            else: 
                print("La ecuación tiene infinitas soluciones")
else:
    print("La ecuacion no tiene solución perteneciente a los Reales")