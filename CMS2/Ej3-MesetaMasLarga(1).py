from typing import List

# Aclaración: Debido a la versión de Python del CMS, para el tipo Lista, la sintaxis de la definición de tipos que deben usar es la siguiente:
# l: List[int]  <--Este es un ejemplo para una lista de enteros.
# Respetar esta sintaxis, ya que el CMS dirá que no pasó ningún test si usan otra notación.
def mesetaMasLarga(l: List[int]) -> int :
  if len(l) == 0:return 0
  previousNumber:int = l[0]
  repeatedNumberCounter:int = 0
  repeatedBestCounter:int = 0

  for i in range(0,len(l)):
   if l[i]==previousNumber:
     repeatedNumberCounter +=1
     if repeatedNumberCounter>repeatedBestCounter:repeatedBestCounter=repeatedNumberCounter
   else:
     if repeatedNumberCounter>repeatedBestCounter:repeatedBestCounter=repeatedNumberCounter
     repeatedNumberCounter=1
   previousNumber = l[i]
  return repeatedBestCounter

if __name__ == '__main__':
  x = input()
  print(mesetaMasLarga([int(j) for j in x.split()]))

