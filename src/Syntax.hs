-- Copyright 2024 Dimitrios Papakonstantinou. All rights reserved.
-- Use of this source code is governed by an MIT
-- license that can be found in the LICENSE file.

-- | Module: Syntax
-- This module defines the syntax for the Monty language, including
-- expressions, operations, and function definitions.
module Syntax where

-- | Type alias for variable names used in expressions.
type Name = String

-- | 'Expr' represents the different kinds of expressions in Monty.
-- Each constructor corresponds to a specific expression type.
data Expr
  = -- | Represents a floating-point literal.
    Float Double
  | -- | A binary operation with an operator and two operands.
    BinOp Op Expr Expr
  | -- | A variable reference by name.
    Var String
  | -- | A function call with a name and a list of arguments.
    Call Name [Expr]
  | -- | A function definition with a name, parameters, and body expression.
    Function Name [Expr] Expr
  | -- | An external function declaration with a name and parameters.
    Extern Name [Expr]
  deriving (Eq, Ord, Show) -- Deriving Eq, Ord, and Show for convenience in comparisons and display.

-- | 'Op' defines the operators available in Monty's binary operations.
data Op
  = -- | Addition operator.
    Plus
  | -- | Subtraction operator.
    Minus
  | -- | Multiplication operator.
    Times
  | -- | Division operator.
    Divide
  deriving (Eq, Ord, Show) -- Deriving Eq, Ord, and Show for ease of use.
