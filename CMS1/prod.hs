-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(prod(x ::(Integer)))
  }


-- Completar la definición de la función

prod :: Integer -> Integer
prod a = prodAUX (2*a)

prodAUX:: Integer->Integer
prodAUX a 
       | a==1 = 1 + 2
       | a>1  = ((a^(2::Integer)) + 2*a) * prodAUX (a-1)
-- Pueden agregan las funciones que consideren necesarias