type CIN = String

addSum :: CIN -> CIN
addSum a = a ++ show n1 ++ show n2
  where
    (n1, n2) = quotRem x 10
    x = sums a
    sums [] = 0
    sums (y:ys) = read [y] + sums ys

valid :: CIN -> Bool
valid a = length a == 10 && addSum (take 8 a) == a 