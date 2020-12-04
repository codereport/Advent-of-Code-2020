iota :: Int -> [Int]
iota n = [0..(n-1)]

trees :: [String] -> Int
trees = length 
      . filter (=='#') 
      . map (\p -> s !! (fst p) !! (snd p)) 
      . map (\e -> (e, e * 3 `mod` h)) 
      . iota
