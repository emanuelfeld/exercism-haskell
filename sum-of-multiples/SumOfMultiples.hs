module SumOfMultiples (sumOfMultiples) where

import Data.List (nub)

sumOfMultiples :: (Integral a) => [a] -> a -> a
sumOfMultiples xs limit = sum $ nub $ concatMap (multiplesBelow limit) xs

multiplesBelow :: (Integral a) => a -> a -> [a]
multiplesBelow limit x = [x, 2*x .. pred limit]