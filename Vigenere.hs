{-# LANGUAGE ScopedTypeVariables #-}

module Vigenere (encrypt, decrypt) where

fMod :: forall a. (Bounded a, Enum a) => (Int -> Int -> Int) -> a -> a -> a
fMod f x1 x2 = toEnum $ (fromEnum x1 `f` fromEnum x2) `mod` m
  where
    m = fromEnum (maxBound :: a) + 1

zipCycleWith :: (a -> b -> c) -> [a] -> [b] -> [c]
zipCycleWith f k = zipWith f k'
  where
    k' = cycle k

encrypt :: (Bounded a, Enum a) => [a] -> [a] -> [a]
encrypt = zipCycleWith $ fMod (+)

decrypt :: (Bounded a, Enum a) => [a] -> [a] -> [a]
decrypt = zipCycleWith $ fMod subtract
