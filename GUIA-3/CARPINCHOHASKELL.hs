main :: IO ()
main = return ()

doubleMe:: Int->Int
doubleMe x = x+x

carpinchoTactic:: Float->Float
carpinchoTactic x = x/2

-- EJERCICIO 1 a -- 

f :: Int->Int
f n
   | n==1 =8 
   | n==4 =131
   | n==16 =16
   | otherwise =(-1)

-- EJERCICIO 1 b -- 

g :: Int->Int
g n
   | n==8 =16 
   | n==16 =4
   | n==131 =1
   | otherwise =(-1)

-- EJERCICIO 1 c --

h:: Int->Int
h = f.g

k:: Int->Int
k = g.f 

-- EJERCICIO 2 a--

absoluto:: Int->Int
absoluto n
        | n<0 = n*(-1)
        | n>0 = n
        | otherwise = 0

-- EJERCICIO 2 b--

maximoAbsoluto:: Int->Int-> Int 
maximoAbsoluto a b 
        | (absoluto a)>(absoluto b) = (absoluto a)
        | (absoluto a)<(absoluto b) = (absoluto b)  
        | (absoluto a)==(absoluto b) = (absoluto b)  

-- EJERCICIO 2 c--
-- en realidad no era el maximo absoluto aca pero we es lo mismo mucho texto--
maximo3:: Int->Int->Int->Int
maximo3 a b c
        | (maximoAbsoluto a b == absoluto a) && (maximoAbsoluto a c == absoluto a) = (absoluto a)
        | (maximoAbsoluto a b == absoluto b) && (maximoAbsoluto b c == absoluto b) = (absoluto b)   
        | (maximoAbsoluto a c == absoluto c) && (maximoAbsoluto b c == absoluto c) = (absoluto c)  

-- EJERCICIO 2 d --

--con guarda--
algunoEs0:: Int->Int->Bool
algunoEs0 a b
            | (a==0) || (b==0) = True
            | otherwise = False

--con pattern matching--
algunoEs0MATCHING:: Int->Int->Bool
algunoEs0MATCHING 0 _ = True
algunoEs0MATCHING _ 0 = True
algunoEs0MATCHING _ _ = False

-- EJERCICIO 2 e -- 

--con guarda--
ambosSon0:: Int->Int->Bool
ambosSon0 a b
            | (a==0) && (b==0) = True
            | otherwise = False

--con pattern matching--

ambosSon0MATCHING:: Int->Int->Bool
ambosSon0MATCHING 0 0 = True 
ambosSon0MATCHING _ _ = False 

-- EJERCICIO    2 f -- 

mismoIntervalo:: Float->Float->Bool 
mismoIntervalo a b 
                 | (perteneceAIntervalo a == perteneceAIntervalo b) =True
                 | otherwise = False 

perteneceAIntervalo:: Float->Int 
perteneceAIntervalo param
                        | (param <=(3)) =0
                        | (param >(3) && param<=7) =1
                        | (param>7) =2


-- EJERCICIO 2 g -- 

sumaDistintos:: Int->Int->Int->Int
sumaDistintos a b c
                  | (sonDistintos a b == False) && (sonDistintos a c == False) && (sonDistintos b c == False) =0
                  | (sonDistintos a b == False) && (sonDistintos a c) && (sonDistintos b c) =(a+c)
                  | (sonDistintos a b) && (sonDistintos a c == False) && (sonDistintos b c) =(a+b)
                  | (sonDistintos a b) && (sonDistintos a c) && (sonDistintos b c == False) =(a+c)


sonDistintos::Int->Int->Bool
sonDistintos a b 
               | a==b = False
               | otherwise = True 

-- EJERCICIO 2 h -- 

esMultiploDe:: Int->Int->Bool
esMultiploDe a b
                | (a `mod` b) == 0 = True
                | otherwise = False

-- EJERCICIO 2 i -- 

digitoUnidades:: Int->Int
digitoUnidades a = (mod a 10)



-- EJERCICIO 2 j -- 

digitoDecenas:: Int->Int
digitoDecenas a = (digitoUnidades(div a 10))

-- EJERCICIO 3 --

estanRelacionados::Int->Int->Bool
estanRelacionados a b 
                    | a==0 && b==0 = False
                    | (a*a + a*b*k ==0) && (k/=0) && (mod k 1 == 0) = True
                    | otherwise = False
                    where k= (div (a*a) ((-a)*b))

-- EJERCICIO 4 a -- 

prodInt::(Float,Float)->(Float,Float)-> Float
prodInt (a,b) (c,d) = a*c + b*d 

-- EJERCICIO 4 b --
todoMenor ::(Float,Float)->(Float,Float)-> Bool
todoMenor (a,b) (c,d)
                  | (a<c && b<d)  = True
                  | otherwise = False

-- EJERCICIO 4 c --

distanciaPuntos ::(Float,Float)->(Float,Float)-> Float
distanciaPuntos (a,b) (c,d) = (rangoFuncion (a,b) - rangoFuncion (c,d))
                  

rangoFuncion:: (Float,Float)->Float
rangoFuncion (a,b) = sqrt(a*a + b*b)

-- EJERCICIO 4 d --

sumaTerna ::(Float,Float,Float)-> Float
sumaTerna (a,b,c) = (a+b+c)

-- EJERCICIO 4 e -- 

sumarSoloMultiplos ::(Int,Int,Int)->Int->Int
sumarSoloMultiplos (a,b,c) x
                           | (mod a x == 0) && (mod b x == 0) && (mod c x == 0) = a+b+c
                           | (mod a x == 0) && (mod b x == 0) = a+b
                           | (mod a x == 0) && (mod c x == 0) = a+c
                           | (mod b x == 0) && (mod c x == 0) = b+c
                           | (mod a x == 0) = a 
                           | (mod b x == 0) = b
                           | (mod c x == 0) = c

-- EJERCICIO 4 f -- 

posPrimerPar::(Int,Int,Int)->Int
posPrimerPar (a,b,c) 
                 | (mod a 2 == 0) = 0
                 | (mod b 2 == 0) = 1 
                 | (mod c 2 == 0) = 2
                 | otherwise = 4

-- EJERCICIO 4 g --

crearPar::Int->Int->(Int,Int)
crearPar a b =(a,b)

-- EJERCICIO 4 i --

invertir ::(Int,Int)->(Int,Int)
invertir (a,b) =(b,a)

-- EJERCICIO 5 -- 

todosMenores::(Int,Int,Int)->Bool
todosMenores (a,b,c) 
                  | ((fcinco a) > (gcinco a)) && ((fcinco b) >(gcinco b)) && ((fcinco c)> (gcinco c)) = True
                  | otherwise = False

fcinco:: Int->Int
fcinco x | x<=7 =(x*x)
    | x>7  =(2*x-1)

gcinco:: Int->Int
gcinco x | (mod x 2 == 0) =(div x 2)
    | otherwise = (3*x+1)







