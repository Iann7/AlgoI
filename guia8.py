import random
from typing import List
import numpy as np
#GUIA 8 
#PARTE 1
#EJERCICIO 1 
def pertenece1(s:List[int],e:int)->bool:
    counter =0
    while (len(s)>0):
        if(s[counter] == e): return True 
        counter +=1

    return False 

def pertenece2(s:List[int],e:int)->bool:
    boolRange:bool = False 
    for i in range(0,len(s)):
        if(s[i] == e): boolRange=True
    return boolRange


def pertenece3(s:List[int],e:int)->bool:
    boolRange:bool = False 
    for i in s:
        if(s == e):
            boolRange=True
            break
    return boolRange

#EJERCICIO 2 
def divideATodos(s:List[int],e:int)->bool:
    boolDivide:bool =True
    for i in range(0,len(s)):
        if s[i] % e != 0: 
            boolDivide=False
            break
    return boolDivide

# EJERCICIO 3 
def sumaTotal(s:List[int])->int:
    cuentaTotal:int =0
    for i in range(0,len(s)):
        cuentaTotal+=i
    return cuentaTotal

# EJERCICIO 4 
def problemaOrdenados(s:List[int])->bool:
    variableAnterior:int = s[0]
    isOrdenado:bool=True
    for i in range(1,len(s)):
        if(s[i] < variableAnterior):
            isOrdenado=False
            break
        variableAnterior=s[i]
    return isOrdenado

# EJERCICIO 5   
def palabraMayorASiete(s:List[str])->bool:
    boolMayorASiete = False
    for i in range(0,len(s)):
        if len(s[i])>=7:
            boolMayorASiete=True
            break
    return boolMayorASiete

# EJERCICIO 6 
def esPalindroma(s:List[str])->bool:
    boolPalindroma=True
    primeraVariable:str
    ultimaVariable:str 
    for i in range(0,len(s)):
        primeraVariable = s[i]
        ultimaVariable = s[len(s)-i-1]
        if primeraVariable != ultimaVariable:
            boolPalindroma=False
            break
    return boolPalindroma

#EJERCICIO 7 
def esContraseñaFuerte(s:str)->str:
    outputColor:str="Roja"
    if len(s)>5 and isVerde(s):
        outputColor="Verde"
    elif len(s)>5: return "Amarilla"
    return outputColor

def isVerde(s:str)->bool:
    boolVerde:bool =True
    if len(s)<8:boolVerde=False
    else:
        if(tieneMayusMinusNumber):
            boolVerde = True
        else: boolVerde = False
    return boolVerde
    
def tieneMayusMinusNumber(s:str)->bool:
    boolMinus:bool=False 
    boolMayus:bool=False
    boolNumber:bool=False
    for i in range(0,len(s)):
        if  ("a"<=(s[i]<="z")):boolMinus=True
        elif("A"<=(s[i]<="Z")):boolMayus=True
        elif(1<=s[i]<=9):boolNumber=True
    return boolMinus and boolMayus and boolNumber

# EJERCICIO 8 
def devolverSaldoActual(s)->int:
    saldoTotal:int =0
    for i in range(0,len(s)):
        if(s[i].first == "I"): saldoTotal += s[i].second
        else: saldoTotal -= s[i].second

#EJERCICIO 9
def tresVocalesDistintas(s:str)->bool:
    vocalesTotales:List[str] = []
    for i in range(0,len(s)):
        if(esVocal(i) and noPerteneceA(vocalesTotales,i)): vocalesTotales.append(i)
    if len(vocalesTotales) ==3: return True
    return False

def esVocal(c:chr)->bool:
    if c in ('a','A','e','E','i','I','o','O','u','U'): return True
    return False

def noPerteneceA(s:List[chr],i:chr)->bool:
    for k in range(0,len(s)):
        if i==k: return False
    return True

#SEGUNDA PARTE
#EJERCICIO 1 -a
def borrarIndicesPares(s:List[int])->List[int]:
    for i in range(0,len(s)):
        if(i%2 == 0): s[i] =0
    return s
 
#EJERCICIO 1-b
def borrarIndicesPares(s:List[int])->List[int]:
    paramLista:List[int] = s.copy()
    for i in range(0,len(paramLista)):
        if(i%2 == 0): paramLista[i] =0
    return paramLista

#EJERCICIO 1-c
def sinVocales(entradaSTR:str)->str:
    paramSTR:str = ""
    for i in range(0,len(entradaSTR)):
        if esVocal(entradaSTR[i])==False: paramSTR += entradaSTR[i]
        else: continue
    return paramSTR

#EJERCICIO 3 - PROGRAMAS INTERACTIVOS
# A
def listaEstudiantes()->List[str]:
    listaEstudiantes:List[str] = []
    x=input()
    while (x != "listo"):
        listaEstudiantes.append(x)
        x=input()
    print(listaEstudiantes)
    return listaEstudiantes
# B 
def cargaSube():
    command=input()
    monto = 0
    carga=int(input())
    lisTuplas:List[(str,int)] =[]
    while(command != "x"):
        if command=="C": 
            monto +=carga
            lisTuplas.appendd(("C",carga))
        elif command == "D": 
            monto -=carga
            lisTuplas.appendd(("C",carga))
        else:
            print("Comando no reconocido.Por favor vuelva a intentarlo")
    command=input()
    carga=int(input())

#C
#TODO:AGREGAR RANDINT
#TODO:AGREGAR HISTORIAL CARTAS y mostrarlas al ganar 
#TODO:AGREGAR PRINTS PARA QUE EL USUARIO VEA QUE ESTA HACIENDO
def sieteYMedio():
    cartas = range(0,8) + range(10,13)
    command = input()
    azar = random.choice(cartas)
    cartas.remove(azar)
    if azar==12 or azar==12 or azar ==10: suma+=0.5
    else:suma +=azar
    while(command !="P" or suma>=7.5):
        azar = random.choice(cartas)
        cartas.remove(azar)
        if azar==12 or azar==12 or azar ==10: suma+=0.5
        else:suma +=azar
        command=input()
    if suma >7.5: print("Perdiste")
    else: print("Ganaste")
    
#EJERCICIO 4 
#TODO

#EJERCICIO 5 
def elevarMatriz(d:int,p:float):
    matriz = np.random.random((d,d))
    np.linalg.matrix_power(matriz,)


