module List where

import Prelude hiding (Fractional, Functor, fmap)
import Functor

data List a = Nil | Cons a (List a) deriving (Read, Show)
data Fractional = Fraction Int Int

-- Num, Show, Read

fromList []     = Nil
fromList (x:xs) = Cons x (fromList xs)

toList :: List t -> [t]
toList Nil         = []
toList (Cons x xs) = x:toList xs

instance Functor List where
  fmap f = fromList . map f . toList
