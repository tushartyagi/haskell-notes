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
-- the *let* block creates a new scope for expressions,
-- any expressions between *let* and *in* are available 
-- in the lines that follow the block.

lend amount balance = let reserve = 100
                          newBalance = balance - amount
                      in if balance < reserve
                         then Nothing
                         else Just newBalance

-- We can also use *where* clause, which also creates 
-- a local scope for expressions like *let* but comes 
-- after the scope expressions

lend2 amount balance = if balance < reserve
                       then Nothing
                       else Just newBalance
                where reserve = 100
                      newBalance = balance - amount

main = do 
    print $ lend 50 120
    print $ lend2 12 50