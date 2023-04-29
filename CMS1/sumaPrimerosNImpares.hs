-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaPrimerosNImpares(x ::(Integer)))
  }

sumaPrimerosNImpares :: Integer -> Integer
-- Completar la definición de la función

sumaPrimerosNImpares a | True =outisdeLOOP x x
                        where x=(2*a-1)

outisdeLOOP::Integer->Integer->Integer
outisdeLOOP i tope 
                  | i==1 && (mod i 2 == 0)  =0
                  | i==1 && (mod i 2 /= 0)  = 4
                  | i>1 &&  (mod i 2 == 0) =0 + outisdeLOOP (i-1) tope
                  | i>1 &&  (mod i 2 /= 0) = 2*i + 2 + outisdeLOOP (i-1) tope
-- Pueden agregan las funciones que consideren necesarias


