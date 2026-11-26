module Main where

import System.IO

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  putStrLn "=================================="
  putStrLn "       CAIXA ELETRONICO"
  putStrLn "=================================="

  menu

menu :: IO ()
menu = do
    putStrLn "\n========== MENU PRINCIPAL =========="
    putStrLn "1 - Consultar saldo"
    putStrLn "2 - Deposito"
    putStrLn "3 - Saque"
    putStrLn "4 - Sair"
    putStrLn "===================================="

    putStr "Escolha uma opcao: "
    opcao <- getLine

    case opcao of
      "1" -> do
        putStrLn "Opcao de consulta de saldo selecionada."
        menu

      "2" -> do
        putStrLn "Opcao de deposito selecionada."
        menu

      "3" -> do
        putStrLn "Opcao de saque selecionada."
        menu

      "4" -> do
        putStrLn "Obrigado por utilizar nosso caixa eletronico!"
        return ()

      _ -> do
        putStrLn "Opcao invalida! Tente novamente."
        menu
