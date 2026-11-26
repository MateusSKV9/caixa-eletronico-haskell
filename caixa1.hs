module Main where

import System.IO

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "=================================="
  putStrLn "       CAIXA ELETRONICO"
  putStrLn "=================================="

  putStrLn "Bem-vindo ao caixa eletronico!"
