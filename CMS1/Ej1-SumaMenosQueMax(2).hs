-- No editar esta parte
main :: IO ()
main = do
  x <- readLn
  print (sumaMenosQueMax (x :: (Int, Int, Int)))


-- Completar acá la definición de la función --

sumaMenosQueMax :: (Int, Int, Int) -> Bool
sumaMenosQueMax (a,b,c) | (maximo t) > ((minimo t) + (medio t)) =True
                        | otherwise =False
                        where t=(a,b,c)

maximo::(Int,Int,Int)->Int
maximo (a,b,c) 
          | (a>=b && a>=c) =a
          | (b>=a && b>=c) =b
          | (c>=a && c>=b) =c

minimo::(Int,Int,Int)->Int
minimo (a,b,c) 
          | (a<=b && a<=c) =a
          | (b<=a && b<=c) =b
          | (c<=a && c<=b) =c

medio::(Int,Int,Int)->Int
medio (a,b,c)
          | a==b && b==c =a
          | ((a>=b) && (a<=c)) || ((a<=b) && (a>=c)) =a
          | ((b>=a) && (b<=c)) || ((b<=a) && (b>=c)) =b
          | ((c>=a) && (c<=b)) || ((c<=a) && (c>=b)) =c


-- Pueden agregan las funciones que consideren necesarias