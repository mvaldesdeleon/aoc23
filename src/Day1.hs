module Day1
  ( day1,
  )
where

import Data.Char (digitToInt, isDigit)
import qualified Data.Text as T
import Relude

part1 :: Text -> Integer
part1 input =
  let digitsOnly = T.filter isDigit <$> lines input
   in sum (firstAndLast <$> digitsOnly)
  where
    firstAndLast value =
      let first = digitToInt $ T.head value
          last = digitToInt $ T.last value
       in toInteger $ first * 10 + last

day1 :: Text -> IO (String, String)
day1 input = do
  return (show $ part1 input, "N/A")
