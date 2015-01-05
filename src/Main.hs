-- I was missing out on this empty list branch
sumeven n [] = n
sumeven n (x:xs) = if even x
                   then sumeven (n + x) xs
                   else sumeven n xs

--eta-reduction
calc = sumeven 0

-- using Maybe
second :: [a] -> Maybe a
second (x:xs) = if null xs
              then Nothing
              else Just (head xs)

-- another usage of Maybe
-- lend is a function taking two params
-- the let block defines two new expressions
lend amount balance = let reserve = 100
                          newBalance = balance - amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance

main = print (second [1])