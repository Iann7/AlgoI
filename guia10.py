from queue import LifoQueue as Pila
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
    archivo.write(frase)
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