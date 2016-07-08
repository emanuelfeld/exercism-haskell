module School (School, empty, grade, sorted, add) where

import qualified Data.Map as M
import Data.List(sort)

type School = M.Map Int [String]

add :: Int -> String -> School -> School
add number student = M.insertWith (++) number [student]

empty :: School
empty = M.empty

sorted :: School -> [(Int, [String])]
sorted = M.toAscList . M.map sort

grade :: Int -> School -> [String]
grade = M.findWithDefault []