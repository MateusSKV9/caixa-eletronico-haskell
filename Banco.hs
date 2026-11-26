module Banco where

type Estado = Double

saldo :: Estado -> IO Estado
saldo estado = do
  putStrLn ("Saldo atual: R$ " ++ show estado)
  return estado

deposito :: Estado -> IO Estado
deposito = undefined

saque :: Estado -> IO Estado
saque = undefined
