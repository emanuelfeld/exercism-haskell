module Bob (responseFor) where

import qualified Data.Text as T
import Data.Char (isLower, isUpper)

strip :: String -> String
strip = T.unpack . T.strip . T.pack

responseFor :: String -> String
responseFor xs
    | isEmpty = "Fine. Be that way!"
    | isYelling = "Whoa, chill out!"
    | isAsking = "Sure."
    | otherwise = "Whatever."
    where
        cleanxs = strip xs
        isEmpty = cleanxs == []
        isYelling = not (any isLower cleanxs) && any isUpper cleanxs
        isAsking = last cleanxs == '?'
