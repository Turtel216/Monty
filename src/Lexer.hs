-- Copyright 2024 Dimitrios Papakonstantinou. All rights reserved.
-- Use of this source code is governed by an MIT
-- license that can be found in the LICENSE file.

module Lexer where

import Text.Parsec.Language (emptyDef)
import Text.Parsec.String (Parser)
import qualified Text.Parsec.Token as Tok

lexer :: Tok.TokenParser ()
lexer = Tok.makeTokenParser style
  where
    ops = ["+", "*", "-", ";"]
    names = ["def", "extern"]
    style =
      emptyDef
        { Tok.commentLine = "#",
          Tok.reservedOpNames = ops,
          Tok.reservedNames = names
        }

integer :: Parser Integer
integer = Tok.integer lexer

float :: Parser Double
float = Tok.float lexer

parens :: Parser a -> Parser a
parens = Tok.parens lexer

commaSep :: Parser a -> Parser [a]
commaSep = Tok.commaSep lexer

semiSep :: Parser a -> Parser [a]
semiSep = Tok.semiSep lexer

identifier :: Parser String
identifier = Tok.identifier lexer

reserved :: String -> Parser ()
reserved = Tok.reserved lexer

reservedOp :: String -> Parser ()
reservedOp = Tok.reservedOp lexer
