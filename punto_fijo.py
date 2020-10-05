from math import *

#Función f(x)=x
def g(x):
    g = 
    return g
#Introducir la tolerancia 
tol = 0.001
#Introducir numero maximo de iteraciones 
n_max = 30
#Introducir intervalor de confianza
a = float(input("Introduce el extemo inferior: "))
b = float(input("Introduce el extemo superior: "))
error = abs(b-a)/abs(b)
#Introducir x0 punto inicial
x0 = float(input("Introduce el punto inicial: "))

i = 1 
while not(error <= tol or i>=n_max):
    a = b
    b = g(a)
    print(f" gi(a) = { round(b,3) }, error = {round(error,3)}")   
    error = abs(b-a)/abs(b)
    i = i+1
raiz = b
print(f"La raiz es x= {round(raiz,3)} , error = {round(error,3)} , iteraciones = {i} ")