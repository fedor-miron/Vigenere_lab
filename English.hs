module English (English (..), fromChar) where

import Data.Char (toUpper)

data English = A | B | C | D | E | F | G | H | I | J | K | L | M | N | O | P | Q | R | S | T | U | V | W | X | Y | Z
  deriving (Eq, Ord, Enum, Bounded, Show, Read)

fromChar :: Char -> English
fromChar c = read [toUpper c]
