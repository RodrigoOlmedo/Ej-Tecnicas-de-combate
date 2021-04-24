module Spec where
import PdePreludat
import Clase3
import Test.Hspec

correrTests :: IO ()
correrTests = hspec $ do
   describe "Test de golpes" $ do

     it "Un golpe que se entreno por 240 horas deberia ejercer una presion de 225 sobre un objetivo de 8 letras" $ do
        presionGolpe 240 "8 letras" `shouldBe` 225
    
     it "Un golpe gomu gomu a un objetivo de 8 letras deberia ejercer una presion de 168.75 " $ do
         gomuGomu "8 letras" `shouldBe` 168.75
         --No es el test mas efectivo ya que probablemente cambien las horas de entrenamiento

     it "Los golpes normales consecutivos deberian ejercer una presion de 225 sobre un objetivo de 8 letras" $ do
        normalesConsecutivos "8 letras" `shouldBe` 225
        --No es el test mas efectivo ya que probablemente cambien las horas de entrenamiento

   describe "Test de dificultad" $ do

     it "Un objetivo de 32 de fortaleza es difícil" $ do
        objDificil "Escudo de fuerza" `shouldBe` True
     it "Un objetivo de 14 de fortaleza no es difícil" $ do
        objDificil "Botella" `shouldBe` False
   
   describe "Test de accesibilidad" $ do

     it "Un objetivo de 44 de fortaleza focalizado de deberia ser accesible " $ do
        objAccesible "bolsa de entrenamiento" `shouldBe` True
     it "Un objetivo de 6 de fortaleza no deberia ser accesible" $ do
        objAccesible "puf" `shouldBe` False