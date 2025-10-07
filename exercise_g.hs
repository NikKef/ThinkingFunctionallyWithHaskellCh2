type Date = (Int, Int, Int)

showDate :: Date -> String
showDate (d, m, y) = show d ++ endings d ++ " " ++ months!!(m-1) ++ ", " ++ show y
    where
        months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        endings d
          | d == 1 || d == 21 || d == 31 = "st"
          | d == 2 || d == 22            = "nd"
          | d == 3 || d == 23            = "rd"
          | otherwise                    = "th"
