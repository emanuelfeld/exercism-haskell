module DNA (count, nucleotideCounts) where

import Data.List (map, group, sort)
import Data.Map.Strict (Map, fromListWith)

count :: Char -> String -> Int
count n 
    | n `elem` "ATCG" = length . filter (==n)
    | otherwise = error $ "invalid nucleotide '" ++ [n] ++ "'"

nucleotideCounts :: String -> Map Char Int
nucleotideCounts = fromListWith (+) . (weightMap 0 "ATCG" ++) . weightMap 1

weightMap :: Int -> String -> [(Char, Int)]
weightMap = flip zip . repeat