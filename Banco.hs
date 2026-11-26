module Banco where

type Estado = Double

saldo :: Estado -> IO Estado
saldo estado = do
  putStrLn ("Saldo atual: R$ " ++ show estado)
  return estado

deposito :: Estado -> IO Estado
deposito estado = do
  putStr "Digite o valor para depósito: "
  valor <- readLn :: IO Double
  if valor < 0
    then do
      putStrLn "Valor inválido! O valor do depósito não pode ser negativo."
      return estado
    else do
      let novoEstado = estado + valor
      putStrLn ("Depósito realizado com sucesso. Novo saldo: R$ " ++ show novoEstado)
      return novoEstado

saque :: Estado -> IO Estado
saque estado = do
  putStr "Digite o valor para saque: "
  valor <- readLn :: IO Double
  if valor < 0
    then do
      putStrLn "Valor inválido! O valor do saque não pode ser negativo."
      return estado
    else
      if valor > estado
        then do
          putStrLn "Saldo insuficiente para realizar o saque."
          return estado
        else do
          let novoEstado = estado - valor
          putStrLn ("Saque realizado com sucesso. Novo saldo: R$ " ++ show novoEstado)
          return novoEstado