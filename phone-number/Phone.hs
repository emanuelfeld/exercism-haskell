module Phone (areaCode, number, prettyPrint) where

import Data.List.Split (splitPlaces)
import Data.Char (isDigit)

number :: String -> String
number n
    | length clean == 10 = clean
    | length clean == 11 && head clean == '1' = tail clean
    | otherwise = "0000000000"
    where clean = filter isDigit n

areaCode :: String -> String
areaCode = take 3 . number

prettyPrint :: String -> String
prettyPrint n =
    let n' = splitNumber n
    in "(" ++ n'!!0 ++ ") " ++ n'!!1 ++ "-" ++ n'!!2

splitNumber :: String -> [String]
splitNumber = splitPlaces [3, 3, 4 :: Int] . number