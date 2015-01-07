module IntParse where

import Data.Char

asInt :: String -> Int
asInt xs = loop 0 xs

loop :: Int -> String -> Int
loop val [] = val
loop val (x:xs) = loop val' xs
                  where val' = val * 10 + digitToInt x

