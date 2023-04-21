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

-- EJERCICIO 14 --  

sumaPotencias :: Integer ->Integer ->Integer ->Integer
sumaPotencias q n m 
                    | n==1 = sumaPotenciasAUX q n m
                    | n>1 = sumaPotenciasAUX q n m + sumaPotencias q (n-1) m

sumaPotenciasAUX :: Integer ->Integer ->Integer ->Integer
sumaPotenciasAUX q n m 
                      | m==1 = q^(m+n)
                      | m>1 = q^(m+n) + sumaPotenciasAUX q n (m-1)

-- EJERCICIO 15 --

sumaRacionales :: Int ->Int ->Float
sumaRacionales a b | a==1 = sumaRacionalesAUX a b 
                   | a > 1 = sumaRacionalesAUX a b + sumaRacionalesAUX a (b-1)

sumaRacionalesAUX:: Int->Int->Float
sumaRacionalesAUX a b | b==1 =  fromIntegral a / fromIntegral b  
                      | b > 1 =  fromIntegral a / fromIntegral b + sumaRacionalesAUX a (b-1)

-- EJERCICIO 17 -- 
     
esFibonacci :: Int->Bool
esFibonacci n | n==0 =True
              | n<0 =False
              | otherwise = esFibonacciAUX 0 1 n

esFibonacciAUX::Int->Int->Int->Bool
esFibonacciAUX a b num 
                   | (a+b) == num =True
                   | (a+b)>num =False
                   | (a+b)<num && fibonacci b /=num =esFibonacciAUX b c num
                   where c=a+b

-- EJERCICIO 18 --

mayorDigitoPar:: Integer -> Integer
mayorDigitoPar a 
               |  a<10 && mod a 2 ==0 =a
               |  a<10 && mod a 2 /=0 =(-1)
               |  x > y =x
               |  x < y =y
               |  x == y =x
               where x = mayorDigitoPar (div a 10)
                     y = if (mod (mod a 10) 2) == 0 then mod a 10 else -1 

-- EJERCICIO 21 -- 

pitagoras::Int->Int->Int->Int
pitagoras m n r 
               | m==0 =x
               | m>0  =x + pitagoras (m-1) n r
               where x=pitagorAUX m n r

pitagorAUX::Int->Int->Int->Int
pitagorAUX m n r 
               | n==0 && ((m^2 + n^2) <= r^2) =1
               | n==0 && ((m^2 + n^2) > r^2) =0
               | n>0 && ((m^2 + n^2) <= r^2) =1+ x
               | otherwise = x
               where x= pitagorAUX m (n-1) r
               
