module Exercise03 where   -- solution to the exercises of chapter 3

--solution 1: Write a number which counts the number of elements in the list
myCount :: [Int] -> Int
myCount [] = 0
myCount (x:xs) = 1 + myCount xs
