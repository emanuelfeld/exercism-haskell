module DNA (toRNA) where
toRNA :: String -> String
toRNA = map repl 
    where
        repl 'G' = 'C'
        repl 'C' = 'G'
        repl 'T' = 'A'
        repl 'A' = 'U'
        repl _ = error "invalid nucleotide"
