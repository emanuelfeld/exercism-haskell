module SpaceAge (Planet(..), ageOn) where

data Planet
    = Earth
    | Mercury
    | Venus
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune

ageOn :: Planet -> Double -> Double
ageOn planet seconds = 
    let earthYear = 31557600
        period = case planet of
        Earth   -> 1.0
        Mercury -> 0.2408467
        Venus   -> 0.61519726
        Mars    -> 1.8808158
        Jupiter -> 11.862615
        Saturn  -> 29.447498
        Uranus  -> 84.016846
        Neptune -> 164.79132
    in seconds / (earthYear * period)
