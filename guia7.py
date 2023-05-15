import math 

#HELLO WORLD BBY 

def imprimir_hola():
  print("Hello World")

imprimir_hola()
#EJERCICIO 1  -------------------
#  Raiz de 2 
def raizDe2():
    return round(math.sqrt(2),4)

# Imprimir un verso
def imprimir_un_verso():
    print("Sweet home \n alabama")

# Factorial de dos 
def factorialdeDos():
    return 2*1
# Factorial de tres 
def factorialDeTres():
    return 3*factorialdeDos()
# Factorial de cuatro 
def factorialdeCuatro():
    return 4*factorialDeTres
# Factorial de cinco 
def factorialdeCuatro():
    return 4*factorialDeTres

#EJERCICIO 2--------
#ImprimirSaludo
def imprimir_saludo(saludo:str):
    print("Hola " + saludo)

#raizCuadradaDe
def raizCuadradaDe(num):
    return math.sqrt(num)

def imprimir_dos_veces(estribillo:str):
    print(estribillo + "\n" + estribillo)
    
#esMultiploDe
def esMultiploDe(n:int,m:int)->int:
    return (n%m == 0 or m%n ==0)

#esPar
def es_par(n:int)->bool:
    return (n%2==0)

#CantidadDePizzas
def cantidad_de_pizzas(comensales:int,min_cant_porciones:int)->int:
    res:float=math.ceil((comensales*min_cant_porciones)/8)
    return res

#EJERCICIO 3--------
#AlgunoEs0
def alguno_es_0(numero1:int,numero2:int)->bool:
    return (numero1 == 0 or numero2==0)

#AmbosSon0
def ambos_son_0(numero1:int,numero2:int)->bool:
    return (numero1 == 0 and numero2 == 0)

#esNombreLargo
def esNombreLargo(nombre:str)->bool:
    return  (len(nombre)>=3 and len(nombre)<=8)

#esBisiesto
def es_bisiesto(año:int)->bool:
    return (año%400==0 or (año%4==0 and año%100 != 0))

#EJERCICIO 4--------
def peso_pino(altura_pino:int)->int:
    mas_de_3m:int = (max(altura_pino,3)-3)*200
    menos_de_3m:int = min(altura_pino,3)*300
    return mas_de_3m + menos_de_3m

def es_peso_util(pesPino:int)->bool:
    return (pesPino >= 400 and pesPino<=1000)

def sirve_pino(altura_pino:int)->bool:
    return es_peso_util(peso_pino(altura_pino))

#EJERCICIO 5----------
#devolver doble si par 
def devolver_el_doble_si_es_par(un_numero:int)->int:
    if un_numero%2 == 0: return un_numero*2
    else: return un_numero

def devolver_valor_si_es_par_si_no_el_que_sigue(un_numero:int)->int:
    if un_numero%2 == 0: return un_numero
    else: return (un_numero+1)

def devolver_el_doble_si_es_multiplo_de_3_el_triple_si_es_multiplo_de_9(un_numero:int)->bool:
    if  un_numero%9: return 3*un_numero
    elif un_numero%3: return 2*un_numero
    else: return un_numero
    
def es_nombre_largo(nombre:str):
    if (len(nombre))>=5: print("TU NOMBRE TIENE MUCHAS LETRAS! :D")
    else: print("Tu nombre tiene menos de 5 caracteres.")
    
def vacaciones(sexo:bool,edad:int):
    if (edad<18) or (edad>60 and not(sexo)) or (edad>65 and sexo):print("t vas d vacas :)") 
    else: print("A levantar la pala")
    
#EJERCICIO 6---------
#1AL10

def uno_al_10_WHILE():
    i:int =0
    while(i<10):
        i +=1
        print(i)
        
def uno_al_10():
    for i in range(1,11):print(i) 

#10AL40
def diez_al_40():
    for i in range(10,41):print(i) 

#1AL10_ECO
def uno_al_10_ECO():
    for i in range(0,10):print("eco") 

#COUNTDOWN_10_to_1
def countdown():
    for i in range(1,11):print(10-i)
    
    
#EJERCICIO 7----------
#HECHO

#EJERCICIO 8----------
