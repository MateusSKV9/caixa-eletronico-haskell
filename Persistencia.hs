module Persistencia where

import Banco
import System.Directory (doesFileExist)

carregarSaldo :: FilePath -> IO Estado
carregarSaldo caminho = do
    existe <- doesFileExist caminho

    if existe then do
      conteudo <- readFile caminho
      return (read conteudo :: Estado)
    else do
      putStrLn "Arquivo de saldo nao encontrado. Iniciando com saldo zero."
      return 0.0


salvarSaldo :: FilePath -> Estado -> IO ()
salvarSaldo caminho estado = do
  writeFile caminho (show estado)
