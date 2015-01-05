-- I was missing out on this empty list branch
sumeven n [] = n
sumeven n (x:xs) = if even x
                   then sumeven (n + x) xs
                   else sumeven n xs

--eta-reduction
calc = sumeven 0

second :: [a] -> Maybe a
second (x:xs) = if null xs
              then Nothing
              else Just (head xs)

main = print (second [1])