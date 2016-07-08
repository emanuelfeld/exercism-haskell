module Hamming (distance) where

import Data.Composition ((.:))

distance :: (Eq a) => [a] -> [a] -> Int
distance = length . filter id .: zipWith (/=)
