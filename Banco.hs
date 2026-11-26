module Banco where

type Estado = Double

saldo :: Estado -> IO Estado
deposito :: Estado -> IO Estado
saque :: Estado -> IO Estado
