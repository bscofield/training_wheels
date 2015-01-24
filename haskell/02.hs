#!/usr/bin/env runhaskell

import System.Environment
import System.IO

main = do
  (filename:args) <- getArgs
  withFile filename WriteMode (\handle -> do
    hPutStrLn handle "hello world")

