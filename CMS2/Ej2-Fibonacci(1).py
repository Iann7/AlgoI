import sys

def fibonacciNoRecursivo(n: int) -> int:
  fiboAnteUltimo:int=0
  fiboUltimo:int = 0
  fiboParam:int = 0
  for i in range(0,n+1):
    fiboParam = fiboAnteUltimo + fiboUltimo
    fiboAnteUltimo = fiboUltimo
    fiboUltimo = fiboParam
    if i==1:fiboUltimo +=1
    continue
  return fiboUltimo





if __name__ == '__main__':
  x = int(input())
  print(fibonacciNoRecursivo(x))