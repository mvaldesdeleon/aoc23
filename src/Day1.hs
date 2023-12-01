module Day1
  ( day1,
  )
where

import Data.Char (digitToInt, isDigit)
import Data.Foldable (foldl)
import qualified Data.Text as T
import Relude

replaceDigits :: Text -> Text
replaceDigits = fromString . replaceDigits' . T.unpack

replaceDigits' :: String -> String
replaceDigits' ('o' : 'n' : 'e' : rest) = '1' : replaceDigits' ('e' : rest)
replaceDigits' ('t' : 'w' : 'o' : rest) = '2' : replaceDigits' ('o' : rest)
replaceDigits' ('t' : 'h' : 'r' : 'e' : 'e' : rest) = '3' : replaceDigits' ('e' : rest)
replaceDigits' ('f' : 'o' : 'u' : 'r' : rest) = '4' : replaceDigits' rest
replaceDigits' ('f' : 'i' : 'v' : 'e' : rest) = '5' : replaceDigits' ('e' : rest)
replaceDigits' ('s' : 'i' : 'x' : rest) = '6' : replaceDigits' rest
replaceDigits' ('s' : 'e' : 'v' : 'e' : 'n' : rest) = '7' : replaceDigits' ('n' : rest)
replaceDigits' ('e' : 'i' : 'g' : 'h' : 't' : rest) = '8' : replaceDigits' ('t' : rest)
replaceDigits' ('n' : 'i' : 'n' : 'e' : rest) = '9' : replaceDigits' ('e' : rest)
replaceDigits' (other : rest) = other : replaceDigits' rest
replaceDigits' [] = []

part1 :: Text -> Integer
part1 input =
  let digitsOnly = T.filter isDigit <$> lines input
   in sum (firstAndLast <$> digitsOnly)
  where
    firstAndLast value =
      let first = digitToInt $ T.head value
          last = digitToInt $ T.last value
       in toInteger $ first * 10 + last

part2 :: Text -> Integer
part2 = part1 . replaceDigits

day1 :: Text -> IO (String, String)
day1 input = do
  return (show $ part1 input, show $ part2 input)
