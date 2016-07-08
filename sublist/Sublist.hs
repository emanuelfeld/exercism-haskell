module Sublist (Sublist (..), sublist) where

import Data.List (isInfixOf)

data Sublist = Equal 
               | Sublist 
               | Superlist 
               | Unequal 
               deriving (Eq, Show)

sublist :: (Eq a) => [a] -> [a] -> Sublist
sublist xs ys = case xs `compareLength` ys of
    EQ | xs == ys          -> Equal
    LT | xs `isInfixOf` ys -> Sublist
    GT | ys `isInfixOf` xs -> Superlist
    otherwise              -> Unequal

compareLength :: [a] -> [a] -> Ordering
compareLength [] (_:_) = LT
compareLength [] [] = EQ
compareLength (_:_) [] = GT
compareLength (_:xs) (_:ys) = compareLength xs ys
