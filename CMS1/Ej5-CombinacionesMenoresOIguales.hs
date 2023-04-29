-- No editar esta parte
main :: IO()
main = do {
  x <- readLn ;
  print(combinacionesMenoresOiguales(x ::(Integer)))
  }

combinacionesMenoresOiguales :: Integer -> Integer
-- Completar la definición de la función

combinacionesMenoresOiguales a = outsideLOOP a a

outsideLOOP::Integer->Integer->Integer
outsideLOOP a top
            | a==1 = auxLOOP a top top
            | a>1 =  auxLOOP a top top + outsideLOOP (a-1) top

auxLOOP::Integer->Integer->Integer->Integer
auxLOOP a b top 
              | b==1 && ((b*a)<=top) =1
              | b==1 && ((b*a)>top) =0
              | b>1 && ((b*a)<=top) = 1 + (auxLOOP a (b-1) top)
              | otherwise= 0 + (auxLOOP a (b-1) top)

-- Pueden agregan las funciones que consideren necesarias


