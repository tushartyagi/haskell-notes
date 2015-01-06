module Exercise03 where   -- solution to the exercises of chapter 3

--solution 1: Write a number which counts the number of elements in the list
-- takes in a list of Num and returns Int
myCount :: (Num a) => [a] -> Double
myCount [] = 0
myCount (x:xs) = 1 + myCount xs


--solution 2: Write a function that computes the mean of a list
-- takes in a list of Num and returns Num
sumList ::  [Double] -> Double
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- takes in a list of Num and returns Num
meanList :: [Double] -> Double
meanList [] = 0
meanList x = sum / length
    where length = myCount x -- returns Num
          sum = sumList x -- returns Num


