module Strain (keep, discard) where

keep :: (a -> Bool) -> [a] -> [a]
keep pred = foldr (\x acc -> if pred x then x:acc else acc) []

discard :: (a -> Bool) -> [a] -> [a]
discard = keep . (not .)