module Main where

import Banco
import Persistencia
import System.Environment (getArgs)
import System.IO (hSetBuffering, BufferMode(NoBuffering), stdout)

main :: IO ()
main = do
  hSetBuffering stdout NoBuffering

  argumentos <- getArgs

  case argumentos of
    [arquivo] -> executarCaixa arquivo
    _ -> putStrLn "Uso: runghc caixa1.hs <arquivo-de-saldo>"

-- ———————————————————————————————————————————————————————————————— 

executarCaixa :: FilePath -> IO ()
executarCaixa arquivo = do
  putStrLn "=================================="
  putStrLn "       CAIXA ELETRONICO"
  putStrLn "=================================="

  estadoInicial <- carregarSaldo arquivo

  estadoFinal <- menu estadoInicial

  salvarSaldo arquivo estadoFinal

  putStrLn "Saldo salvo com sucesso!"

-- ———————————————————————————————————————————————————————————————— 

menu :: Estado -> IO Estado
menu estado = do
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
      novoEstado <- saldo estado
      menu novoEstado

    "2" -> do
      novoEstado <- deposito estado
      menu novoEstado

    "3" -> do
      novoEstado <- saque estado
      menu novoEstado

    "4" -> do
      putStrLn "Obrigado por utilizar nosso caixa eletronico!"
      return estado

    _ -> do
      putStrLn "Opcao invalida! Tente novamente."
      menu estado
