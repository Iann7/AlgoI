import array 
import math
#GUIA 8 
#EJERCICIO 1 
def pertenece1(s:list(int),e:int)->bool:
    counter =0
    while (len(s)>0):
        if(s[counter] == e): return True 
        counter +=1

    return False 

def pertenece2(s:list(int),e:int)->bool:
    boolRange:bool = False 
    for i in range(0,len(s)):
        if(s[i] == e): boolRange=True
    return boolRange


def pertenece3(s:list(int),e:int)->bool:
    boolRange:bool = False 
    for i in s:
        if(s == e):
            boolRange=True
            break
    return boolRange

#EJERCICIO 2 
def divideATodos(s:list(int),e:int)->bool:
    boolDivide:bool =True
    for i in range(0,len(s)):
        if s[i] % e != 0: 
            boolDivide=False
            break
    return boolDivide

# EJERCICIO 3 
def sumaTotal(s:list(int))->int:
    cuentaTotal:int =0
    for i in range(0,len(s)):
        cuentaTotal+=i
    return cuentaTotal

# EJERCICIO 4 
def problemaOrdenados(s:list(int))->bool:
    variableAnterior:int = s[0]
    isOrdenado:bool=True
    for i in range(1,len(s)):
        if(s[i] < variableAnterior):
            isOrdenado=False
            break
        variableAnterior=s[i]
    return isOrdenado

# EJERCICIO 5   
def palabraMayorASiete(s:list(str))->bool:
    boolMayorASiete = False
    for i in range(0,len(s)):
        if len(s[i])>=7:
            boolMayorASiete=True
            break
    return boolMayorASiete

# EJERCICIO 6 
def esPalindroma(s:list(str))->bool:
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
def devolverSaldoActual(s:list((str,int)))->int:
    saldoTotal:int =0
    for i in range(0,len(s)):
        if(s[i].first == "I"): saldoTotal += s[i].second
        else: saldoTotal -= s[i].second

#EJERCICIO 9
def tresVocalesDistintas(s:str)->bool:
    vocalesTotales:list(str) = []
    for i in range(0,len(s)):
        if(esVocal(i) and noPerteneceA(vocalesTotales,i)): vocalesTotales.append(i)
    if len(vocalesTotales) ==3: return True
    return False

def esVocal(c:chr)->bool:
    if c in ('a','A','e','E','i','I','o','O','u','U'): return True
    return False

def noPerteneceA(s:list(chr),i:chr)->bool:
    for k in range(0,len(s)):
        if i==k: return False
    return True


