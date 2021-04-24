module Clase3 where
import PdePreludat

vocales = "aeiouAEIOU"

esVocal letra = elem letra vocales

esConsonante = not.esVocal

f x y = x && not y

vocales :: String
esConsonante :: Char -> Bool

quedateElPrimero :: a -> b -> a
quedateElPrimero x y = x

negameElPrimero x y = not x

identidad :: a -> a
identidad x = x

esMinuscula = between 'a' 'z'

between :: Ord a => a -> a -> a -> Bool
between bajo alto medio = bajo <= medio && medio <= alto

esPar = even

--
--

type Horas = Number
type Objetivo = String
type Presion = Number

presionGolpe :: Horas -> Objetivo -> Presion
presionGolpe horas objetivo = poder horas / fortaleza objetivo

poder :: Horas -> Number
poder = (* 15)

fortaleza :: Objetivo -> Number
fortaleza = (2*) . length

type Golpe = Objetivo -> Number

gomuGomu :: Golpe
gomuGomu = presionGolpe 180

normalesConsecutivos :: Golpe 
normalesConsecutivos = presionGolpe 240

objDificil :: Objetivo->Bool
objDificil objetivo = gomuGomu objetivo < 100  

type ObjFoc = String

focalizar :: Objetivo -> ObjFoc
focalizar = take 7

golpeFocalizado :: Objetivo -> Presion
golpeFocalizado = normalesConsecutivos.focalizar

presionAccesible :: Presion -> Bool
presionAccesible = between 200 400

objAccesible :: Objetivo -> Bool
objAccesible = presionAccesible.golpeFocalizado
