from typing import List
from queue import LifoQueue as Pila
from queue import Queue as Cola
import random
import array

nombre_arch = "archivo.txt"
#EJERCICIO 1 A
def contarLineas(nombre_archivo:str)->int:
    archivo =open(nombre_archivo,"r")
    count:int = len(archivo.readlines())
    print(count)
 
#EJERCICIO 1 B 
def existePalabra(nombre_archivo:str,palabra:str)->bool:
    archivo = open(nombre_archivo,"r")
    countPalabra = archivo.read().find(palabra)
    return (countPalabra>=1)
 
#EJERCICIO 1 C
def cantidadApariciones(nombre_archivo:str,palabra:str)->int:
    archivo = open(nombre_archivo,"r")
    countPalabra = archivo.read().find(palabra)
    return countPalabra
 
#EJERCICIO 2 
def clonarSinComentarios(nombre_archivo:str):
    archivo = open(nombre_archivo,"r")
    nuevoArchivo = open(nombre_archivo + "_SIN_NUMERALES","w")
    for i in archivo.readlines():
        if tieneNumeral(i)==True: continue
        nuevoArchivo.write(i)
 
def tieneNumeral(i:str):
    copiaStr:str = i
    copiaStr = copiaStr.replace(" ","")
    return copiaStr[0]=="#"
 
#EJERCICO 3 
def archivoReverso(nombre_archivo:str):
    archivo = open(nombre_archivo,"r")
    nuevoArchivo = open(nombre_archivo + "_REVERSO","w")
 
    linesArchivo = archivo.readlines()
    print(linesArchivo)
    for i in range(0,len(linesArchivo)):
 
        nuevoArchivo.write(linesArchivo[len(linesArchivo)-i-1])
        if i==0: nuevoArchivo.write("\n")
    archivo.close()
    nuevoArchivo.close()
 
#EJERCICIO 4
def agregarALoUltimo(nombre_archivo:str,frase:str):
    archivo = open(nombre_archivo,"a")
    archivo.write("\n" +frase)
    archivo.close()
 
#EJERCICIO 5
def agregarALoPrimero(nombre_archivo:str,frase:str):
    archivo = open(nombre_archivo,"r+")
    lines = archivo.readlines()
    archivo.seek(0)
    archivo.write(frase)
    for line in lines:
        archivo.write(line)
    archivo.close()
agregarALoPrimero(nombre_arch,"HOLA COMO TE VA")
 
#TODO:EJERCICIO 6
 
#EJERCICIO 7
def promedioEstudiante(lu:str)->float:
    archivo = open("alumnos.csv","r")
    lines = archivo.readlines()
    registroAlumno:List[List[str]] =[]
    registroLoop:List[str] = []
    for line in lines:
        registroLoop = line.split(",")
        if registroLoop[0]==lu: registroAlumno.append(registroLoop)
    sumaNotas = 0
    for registro in registroAlumno:
        sumaNotas +=registro[3]
    return sumaNotas/len(registroAlumno)
 
 
 
 
 
#EJERCICIO 11
#TODO: copiar pila  
def buscarElMaximo(p:Pila)->int:
    maximoElementoSoFar = p.get()
    while(p.empty()==False):
        firstOut = p.get()
        if firstOut > maximoElementoSoFar:
            maximoElementoSoFar = firstOut 
    return maximoElementoSoFar
 
def hacerPila()->Pila:
    pilaNueva:Pila = Pila()
    for i in range(0,100):
        pilaNueva.put(i)
        continue
    return pilaNueva

def copiarPila(pila_original:Pila)->Pila:
    listaIntermedia = []
    pilaCopiar:Pila = Pila()
    while(pila_original.empty()==False):
        listaIntermedia.append(pila_original.get)
    for i in range(0,len(listaIntermedia)):
        pila_original.put(listaIntermedia[len(listaIntermedia)-1-i])
        pilaCopiar.put(listaIntermedia[len(listaIntermedia)-1-i])

#EJERCICIO 12:TODO

# COLAS B)
#EJERCICIO 13 

def generarColaRandom(rang:int)->Cola:
    agreCola:Cola = Cola()
    for i in range(rang):
        agreCola.put(random.randint(0,100))
    return agreCola

#EJERCICIO 14 

def cantidadElementos(c:Cola)->int:
    countElementos:int = 0
    colaCopiada:Cola = copiarCola(c)
    while(colaCopiada.empty()==False):
        colaCopiada.get()
        countElementos +=1
        continue
    return countElementos


def copiarCola(c:Cola)->Cola:
    lista_intermedia = []
    colaNueva:Cola = Cola()
    while(c.empty()==False):
        lista_intermedia.append(c.get())
    for i in range(len(lista_intermedia)):
        c.put(lista_intermedia[i])
        colaNueva.put(lista_intermedia[i])
    return colaNueva

#EJERCICIO 15 

def buscarElMaximo(c:Cola)->int:
    colaNueva = copiarCola(c)
    maxValue = colaNueva.get()
    while(colaNueva.empty() == False):
        valueParam:int = colaNueva.get()
        if valueParam>maxValue: maxValue = valueParam
        continue
    return maxValue

#EJERCICIO 16 
def jugarCartonDeBingo(carton:List[int],bolillero:Cola)->int:
    boliCopia:Cola = copiarCola(bolillero)
    countBingo:int = 0
    while(boliCopia.empty() == False or countBingo==len(carton)):
        boliParam:int = boliCopia.get()
        if(carton.__contains__(boliParam)):
            countBingo +=1
            carton.remove(boliCopia)
    return boliCopia
    



        