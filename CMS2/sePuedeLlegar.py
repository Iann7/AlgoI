from typing import List
from typing import Tuple

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista y Tupla, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# t: Tuple[str,str]  <--Este es un ejemplo para una tupla de strings.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.

def sePuedeLlegar(origen:str,destino:str,vuelos:List[Tuple[str]])->int:
  posiblesViajesConOrigen:List[Tuple[str]] = equivalenciaViaje(vuelos,origen)
  for i in range(0,len(posiblesViajesConOrigen)):
    if destino==posiblesViajesConOrigen[i][1]:return i+1
  return -1

def equivalenciaViaje(vuelos:List[Tuple[str,str]],origen:str)->List[Tuple[str,str]]:
  ciudadOrigen:str = origen
  posiblesViajesConOrigen:List[Tuple[str,str]] = []
  while(True):
    foundConeccion:bool=False
    for vuelo in vuelos:
      if vuelo[0]==ciudadOrigen:
        posiblesViajesConOrigen.append(vuelo)
        ciudadOrigen = vuelo[1]
        foundConeccion=True
        break
    if foundConeccion==True:continue
    else:break
  return posiblesViajesConOrigen


if __name__ == '__main__':
  origen = input()
  destino = input()
  vuelos = input()
  
  print(sePuedeLlegar(origen, destino, [tuple(vuelo.split(',')) for vuelo in vuelos.split()]))
