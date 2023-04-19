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
todosDigitosIguales a
                    | n<10 = True
                    | mod n 10 = mod(div n 10) = todosDigitosIguales(div n 10)
                    | otherwise = false 
-- EJERCICIO 8 -- 

cantDigitos::Int->Int
cantDigitos a 
            |  a>0 = 1+cantDigitos(div a 10)
            |  otherwise = 0