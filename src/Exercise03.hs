module Exercise03 where   -- solution to the exercises of chapter 3

-- SOLUTION 1: Write a number which counts the number of elements in the list
-- takes in a list of Num and returns Double
myCount :: (Num a) => [a] -> Double
myCount [] = 0
myCount (x:xs) = 1 + myCount xs


-- SOLUTION 3: Write a function that computes the mean of a list
-- takes in a list of Double and returns Double
sumList ::  [Double] -> Double
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- takes in a list of Double and returns Double
meanList :: [Double] -> Double
meanList [] = 0
-- There are two types of division operators, one for Integer and one for Double
-- I couldn't use the one for Integer because the sumList can contain doubles.
meanList x = sum / length
    where length = myCount x
          sum = sumList x


-- SOLUTION 4: Turn a list into a palindrome
myReverse :: [a] -> [a]
myReverse [] = []
myReverse x = myReverse (tail x) ++ [head x]

palindrome [] = []
palindrome x = x ++ myReverse x