-- Copyright 2024 Dimitrios Papakonstantinou. All rights reserved.
-- Use of this source code is governed by an MIT
-- license that can be found in the LICENSE file.

module Main where

import qualified MyLib (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc
