from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def filasParecidas(matriz: List[List[int]]) -> bool :
  if len(matriz)==1 or len(matriz)==0:return True
  diferenciaEsperada:int = matriz[1][0] - matriz[0][0]
  boolFilasParecidas:bool = True
  for i in range(0,len(matriz)):
    if i == 0:continue
    for j in range(0,len(matriz[i])):
      if(diferenciaEsperada!=(matriz[i][j]-matriz[i-1][j])):
        boolFilasParecidas = True
        break
  return boolFilasParecidas 
      


if __name__ == '__main__':
  filas = int(input())
  columnas = int(input())
 
  matriz = []
 
  for i in range(filas):         
    fila = input()
    if len(fila.split()) != columnas:
      print("Fila " + str(i) + " no contiene la cantidad adecuada de columnas")
    matriz.append([int(j) for j in fila.split()])
  
  print(filasParecidas(matriz))