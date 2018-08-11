-- Mauro Hemerly Gazzani
-- Disciplina: Programação Funcional
-- Semestre 2018/2

module Exe1 where
import Data.Char

main = do
  print (soma 3 4)
  -- let var = var + 1
  print var
  print notaFinal

var = 99 :: Int

soma :: Int -> Int -> Int
soma x y = x + y

incrementa :: Int ->  Int
incrementa x = x + 1

dobraSoma :: Int -> Int -> Int
dobraSoma x y = 2 * (x + y)

eMaior :: Int -> Int -> Bool
eMaior x y = if x > y then True else False

eMaior2 :: Int -> Int -> Bool
eMaior2 x y 
   | x > y = True
   | otherwise = False

quad :: Int -> Int
quad x = x^2

media2 :: Double -> Double -> Double 
media2 x y = (x + y)/2

notaFinal :: Double 
notaFinal = media2 4.5 7.2


raizes2oGrau :: Double -> Double -> Double -> (Double, Double)
raizes2oGrau a b c
  | delta < 0 = error "Raízes complexas!"
  | otherwise = (x1, x2)
  where
    x1 = (-b - sqrt delta) / (2*a)
    x2 = (-b + sqrt delta) / (2*a)
    delta = b^2 - 4*a*c

    

-- Condição de existência de triângulo
ladosTriangulo :: Float -> Float -> Float -> Bool 
ladosTriangulo a b c = 
    a > 0 &&
    b > 0 &&
    c > 0 &&
    a < b + c && b < a + c && c < a + b

ladosTriangulo2 :: Float -> Float -> Float -> Bool 
ladosTriangulo2 a b c = a > 0 && b > 0 && c > 0 && a < b + c && b < a + c && c < a + b


(&&&) :: Int -> Int -> Int
a &&& b = if a < b then a else b

(!) :: Int -> Int -> Int
a ! b = a + b
