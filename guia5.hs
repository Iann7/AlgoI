-- EJERCICIO 1 a -- 

longitud::[t]->Int
longitud [] =0
longitud (_:a) = 1 + longitud a

-- EJERCICIO 1 b -- 

ultimo :: [a] -> a
ultimo (b:a)
            | (longitud a)>0 = ultimo(drop 1 a)
            | (longitud a) == 1 =head a
            | (longitud a) == 0 =b

-- EJERCICIO 1 c -- 

principio :: [t] -> [t]
principio (b:a) = drop ((longitud a) -1) a 

-- EJERCICIO 1 d -- 

reverso :: [t] -> [t]
reverso (a:b)
             | (longitud b == 0) = [a]
             | (longitud b == 1) = [head b] ++ [a]
             | (longitud b > 1) = reverso (tail b) ++ [(head b)] ++ [a]

-- EJERCICIO 2 a -- 
-- HEAD XS Y E ES LO MISMO?--

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece e (x:xs)
             | (e == head xs) || (e==x) = True 
             | (longitud xs == 1) || (longitud xs == 0) = False 
             | otherwise = pertenece e (tail (x:xs))

-- EJERCICIO 2 b -- 

todosIguales :: (Eq t) => [t] -> Bool
todosIguales (x:xs)
                  | (length xs <=1) =True
                  | (x /= head tempVar) =False  
                  | (x == head tempVar) && (length xs == 2) =True  
                  | otherwise = todosIguales tempVar 
                  where tempVar = (tail xs)


todosDistintos::(Eq t) => [t] -> Bool
todosDistintos (x:xs) | (todosDistintosAUX (x:xs) head xs length xs)

todosDistintosAUX (Eq t) => [t] -> t -> i -> Bool
todosDistintosAUX (x:xs) y i 
                        | (i==0) || (i==1) 

