-- Copyright 2024 Dimitrios Papakonstantinou. All rights reserved.
-- Use of this source code is governed by an MIT
-- license that can be found in the LICENSE file.

module Main where

import Control.Monad.Trans
import Parser
import System.Console.Haskeline

process :: String -> IO ()
process line = do
  let res = parseToplevel line
  case res of
    Left err -> print err
    Right ex -> mapM_ print ex

main :: IO ()
main = runInputT defaultSettings loop
  where
    loop = do
      minput <- getInputLine ">>> "
      case minput of
        Nothing -> outputStrLn "Ni."
        Just ":q" -> outputStrLn "Ni."
        Just input -> (liftIO $ process input) >> loop
