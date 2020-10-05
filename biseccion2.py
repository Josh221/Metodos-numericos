from math import *
from numpy import sign 

def f(x):
    f = x**3 - exp(x) +3
    return f 

a = float(input('Introduce el extemo inferior del intervalo: '))
b = float(input('Introduce el extemo superior del intervalo: '))
tol = 0.0001
n_max = 30 

i = 1
fa = f(a)
fb = f(b)

while i <= n_max:
    xi = (a+b)/2
    fxi = f(xi)
    print(f" a = {round(a,3)}, b = {round(b,3)}, f(a) = {round(fa,3)}, f(b) = {round(fb,3)}, xi = {round(xi,3)}, f(xi) = {round(fxi,3)}")

    if (fxi == 0) or (b-a)/2 < tol:
        print(f"La raiz buscada es : x = {round(xi,3)} despues de {i} iteraciones")
        break

    i = i +1
#Funcion sign evita un posible desbordamiento de memoria del producto
    if sign(fa)*sign(fxi) > 0:
        a = xi
        fa = fxi
    else:
        b = xi
        fb = fxi
if i >= n_max:
    print("El método no converge")
