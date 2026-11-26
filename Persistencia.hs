module Persistencia where

import Banco

carregarSaldo :: FilePath -> IO Estado
salvarSaldo :: FilePath -> Estado -> IO ()
