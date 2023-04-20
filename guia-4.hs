-- EJERCICIO 1 -- 

fibonacci::Int->Int 
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci(n-1) + fibonacci(n-2)

-- EJERCICIO 2 -- 

parteEntera::Float->Int 
parteEntera a | (a>=(0) && a<1) =0
              | (a>=(-1) && a<=0) =(-1)
              | (a>=1) = parteEntera(a-1) +1
              | (a<=(-1)) = parteEntera(a+1) -1

-- EJERCICIO 3 --

esDivisible::Int->Int->Bool
esDivisible a b | (abs b>abs a) =False 
                | (abs b==abs a) =True 
                | otherwise = esDivisible (a-b) b

-- EJERCICIO 4 -- 

sumaImpares::Int->Int 
sumaImpares a
             | a==0 =0
             | a>=1 = sumaImpares(a-1) + (2*a+1) 

-- EJERCICIO 5 -- 

medioFact::Int->Int 
medioFact a | (a<=0) =1
            | (a>0) =a*medioFact(a-2)

-- EJERCICIO 6 --

sumaDigitos:: Int->Int
sumaDigitos a
            | (a==0) =0
            | (a>0) = x + sumaDigitos(div a 10)
             where x= mod a 10 

-- EJERCICIO 7 -- 

todosDigitosIguales::Int->Bool 
todosDigitosIguales n
                    | n<10 = True
                    | mod n 10 == mod (div n 10) 10 = todosDigitosIguales(div n 10)
                    | otherwise = False 
-- EJERCICIO 8 -- 

iesimoDigito::Int->Int->Int
iesimoDigito a b 
                | (a>=0 && b>=1 && b<=cantDigitos a) = iesimoDigito a x
                | (b==cantDigitos a) = mod a 10 
                | a == 0 =0
                where x = div a 10 

cantDigitos::Int->Int
cantDigitos a 
            |  a>0 = 1+cantDigitos(div a 10)
            |  otherwise = 0

-- EJERCICIO 9 --   
--AGREGAR SOLUCION IMPARES--
{-esCapicua::Int->Bool
esCapicua a 
           | mod (cantDigitos a) 2 /=0 =False
           | ((iesimoDigito (cantDigitos a)) /= iesimoDigito 1) = False 
           | (iesimoDigito (cantDigitos a) == iesimoDigito 1) && (cantDigitos a>=4) = esCapicua x 
           where x= (removeLast     (removeFirst a))-} 

removeLast::Int->Int
removeLast a = a-(iesimoDigito a (cantDigitos a))*10^(cantDigitos a)

removeFirst::Int->Int
removeFirst a = (mod a 10)

-- EJERCICIO 10 -- 

f1::Int->Int
f1 0 = 1
f1 i = 2^i + f1 i-1 

f2::Int->Int->Int
f2 q 1 = q
f2 q i= q^i + f2 q (i-1) 

f3::Int->Int->Int
f3 q n 
     |  n==1 = q
     |  n>1 = q^n + f3 q (n-1)


f4::Int->Int->Int
f4 q n =f4Loop q n (2*n) 

f4Loop::Int->Int->Int->Int
f4Loop q n dn | n==dn =2^n
              | n<dn = 2^n + f4Loop q (n+1) dn

-- EJERCICIO 11 --

eAprox :: Int ->Float
eAprox n | n==0 =1
         | n>=1 = fromIntegral 1 / fromIntegral (fact n) + eAprox (n-1)

fact::Int->Int
fact n | n==0 =1
       | otherwise = n * fact (n-1)

e::Float
e=eAprox 10

