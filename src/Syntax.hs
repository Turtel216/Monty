-- Copyright 2024 Dimitrios Papakonstantinou. All rights reserved.
-- Use of this source code is governed by an MIT
-- license that can be found in the LICENSE file.

module Syntax where

type Name = String

data Expr
  = Float Double
  | BinOp Op Expr Expr
  | Var String
  | Call Name [Expr]
  | Function Name [Expr] Expr
  | Extern Name [Expr]
  deriving (Eq, Ord, Show)

data Op
  = Plus
  | Minus
  | Times
  | Divide
  deriving (Eq, Ord, Show)
