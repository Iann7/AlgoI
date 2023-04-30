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

-- EJERCICIO 2 c -- 
--TODO--

-- EJERCICIO 3--
--TODO--

--EJERCICIO 4 a--

sacarBlancosRepetidos :: [Char] -> [Char]
sacarBlancosRepetidos [] = []
sacarBlancosRepetidos (x:xs) | (length (x:xs) >1) && (x==' ' && x == (head xs))= sacarBlancosRepetidos xs
                             | otherwise = [x] ++ sacarBlancosRepetidos xs

--EJERCICIO 4 b -- 
-- ASUMO QUE NO HAY PRIMEROS Y ULTIMOS ESPACIOS EN LAS PALABRAS, EVENTUALMENTE HARE UNA FUNCION PARA ESO--
contarPalabras :: [Char] -> Integer
contarPalabras[] = 0
contarPalabras (x:xs)
                    | not(hayEspacios (x:xs)) && lgth >=1 =1
                    | otherwise= (contarPalabrasAUX (sacarBlancosRepetidos (x:xs)))
                    where lgth = length (x:xs)

hayEspacios::[Char]->Bool
hayEspacios [] =False
hayEspacios (x:xs) | length (x:xs) ==1 = (x==' ') 
                      | x==' ' =True
                      | x/=' ' =hayEspacios xs


contarPalabrasAUX::[Char]->Integer
contarPalabrasAUX [] =1
contarPalabrasAUX (x:xs) 
                         | (x==' ') =1+contarPalabrasAUX xs
                         | otherwise =0+contarPalabrasAUX xs 

--EJERCICIO 4 c --
--CREAR FUNCION INDICE ESPACIOS DONDE INCLUYE COMIENZO Y FIN DE LA SECUENCIA--
--GENERAR UN ALGORITMO QUE ENCUENTRE LA DIFERENCIA MAS GRANDE ENTRE DOS INDICES INICIO-FIN"

palabraMasLarga :: [Char] -> [Char]
palabraMasLarga (x:xs) =  buscarPalabraAt (x:xs) (diferenciaMasGrande (encontrarEspacios (x:xs) (length(x:xs))) (0,0))

encontrarEspacios::[Char]->Int->[Int]
encontrarEspacios [] _ = []
encontrarEspacios (x:xs) tope 
                        | length (x:xs) ==tope = [tope] ++ encontrarEspacios (tail xs) tope
                        | length (x:xs) > 1 && x==' ' = [length (x:xs)] ++ encontrarEspacios (tail xs) tope
                        | length (x:xs) > 1 && x/=' ' =  encontrarEspacios (tail xs) tope
                        | length (x:xs) == 1 =[1]

diferenciaMasGrande::[Int]->(Int,Int)->(Int,Int)
diferenciaMasGrande [] (a,b) =(a,b)
diferenciaMasGrande (x:xs) (a,b) 
                                | (length (x:xs) == 1) =(a,b)
                                | (length (x:xs) == 2) && (x-head xs)>(b-a)  =(head xs,x)
                                | (length (x:xs) == 2) && (x-head xs)<=(b-a)  =(b,a)
                                | (x - head xs)> (b-a) = diferenciaMasGrande (tail xs) (head xs,x)
                                | (x - head xs)<= (b-a) = diferenciaMasGrande (tail xs) (a,b)

buscarPalabraAt::[Char]->(Int,Int)->[Char]
buscarPalabraAt [] _ =[]
buscarPalabraAt (x:xs) (inicio,tope) | length (x:xs) > inicio = [] ++ buscarPalabraAt xs (inicio,tope)
                                     | length (x:xs) <= inicio && length(x:xs) > tope = [x] ++ buscarPalabraAt xs (inicio,tope)
                                     | length (x:xs) == tope =[x]


-- EJERCICIO 5 a-- 

nat2bin :: Integer -> [Integer]
nat2bin a | d == 1 = [d]++[m] 
          | d /=1 =  nat2bin d ++ [m] 
          where m= (mod a 2)::Integer
                d= (div a 2)::Integer


bin2nat::[Integer]->Integer
bin2nat (x:xs) | length (x:xs) ==1= x*2^(length (x:xs) + (-1))
               | length (x:xs) >1 = x*2^(length (x:xs) + (-1)) + bin2nat xs     

nat2hex :: Integer -> [Char]
nat2hex a | d==0 = [hex2letter m]
          | d/=0 = nat2hex d ++ [hex2letter m] 
               where m=(mod a 16)::Integer
                     d=(div a 16)::Integer

hex2letter::Integer->Char
hex2letter x
                 | x==0  = '0'
                 | x==1  = '1'
                 | x==2  = '2'
                 | x==3  = '3'
                 | x==4  = '4'
                 | x==5  = '5'
                 | x==6  = '6'     
                 | x==7  = '7'
                 | x==8  = '8'
                 | x==9  = '9'
                 | x==10 = 'A'
                 | x==11 = 'B'
                 | x==12 = 'C'
                 | x==13 = 'D'
                 | x==14 = 'E'
                 | x==15 = 'F'