import Data.Char (toUpper)

modernise :: String -> String
modernise = unwords . map camelCase . words
  where
    camelCase (x:xs) = toUpper x : xs