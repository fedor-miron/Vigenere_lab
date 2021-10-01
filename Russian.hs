module Russian (Russian (..), fromChar) where

import Data.Char (toUpper)

data Russian = А | Б | В | Г | Д | Е | Ж | З | И | Й | К | Л | М | Н | О | П | Р | С | Т | У | Ф | Х | Ц | Ч | Ш | Щ | Ъ | Ы | Ь | Э | Ю | Я
  deriving (Eq, Ord, Enum, Bounded, Show, Read)

fromChar :: Char -> Russian
fromChar c = read [toUpper c]
