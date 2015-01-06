module Exercise03 where   -- solution to the exercises of chapter 3

import Data.List

-- SOLUTION 1: Write a number which counts the number of elements in the list
-- takes in a list of Num and returns Double
myCount :: (Num a) => [a] -> Double
myCount [] = 0
myCount (x:xs) = 1 + myCount xs

--myCountInt :: [Int] -> Int
myCountInt [] = 0
myCountInt (x:xs) = 1 + myCountInt xs

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

-- SOLUTION 5 -- A function which checks if the input list is a palindrome
ifPalindrome [] = True
ifPalindrome x | x == myReverse x = True
ifPalindrome x | x /= myReverse x = False

-- SOLUTION 6 -- A function takes in a list of list and 
-- sorts them based on the number of elements

-- Data.List.sortBy allows us to pass an ordering function, we'll
-- create one that compares the length of lists using myCount function above
-- that will change the integers to double, but that's fine because I've not
-- learned about function overloading (if there's something like that in H)
compareListsByLen :: [a] -> [a] -> Ordering
compareListsByLen [] []  = EQ
compareListsByLen x y | myCountInt x == myCountInt y = EQ
compareListsByLen x y | myCountInt x < myCountInt y  = LT
compareListsByLen x y | myCountInt x > myCountInt y  = GT

-- eta-reducing the function
sortListOfLists = sortBy compareListsByLen

