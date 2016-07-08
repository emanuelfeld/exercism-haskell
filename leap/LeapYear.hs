module LeapYear (isLeapYear) where

isLeapYear :: (Integral a) => a -> Bool
isLeapYear x = divisibleBy 4 && (divisibleBy 400 || not (divisibleBy 100))
    where divisibleBy = (0 ==) . rem x