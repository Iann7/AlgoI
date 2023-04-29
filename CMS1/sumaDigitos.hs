-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(sumaDigitos(x ::(Int)))
  }

-- Completar la definición de la función
sumaDigitos :: Int -> Int
sumaDigitos  a | a==0 =0
               | (a>0) = (mod a 10) + sumaDigitos (div a 10)
-- Pueden agregan las funciones que consideren necesarias