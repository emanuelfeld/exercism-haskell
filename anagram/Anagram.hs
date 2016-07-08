module Anagram (anagramsFor) where

import Data.Char (toLower)
import Data.List (sort)

anagramsFor :: String -> [String] -> [String]
anagramsFor = filter . isAnagram

isAnagram :: String -> String -> Bool
isAnagram x y = x' /= y' && sort x' == sort y'
    where toLowerString = map toLower
          x' = toLowerString x
          y' = toLowerString y