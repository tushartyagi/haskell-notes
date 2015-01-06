__Maybe__ is a type constructor which is used in places where we are expecting what are otherwise called "null" values in imperative languages.

The RWH explaination was a bit confusing, but after banging enough head, I came to know what it's used for.
The definition of Maybe is like:
		
		Maybe a = Just a
				| Nothing
				
The usage is pretty simple, once it is understood. 


## [Num](https://www.haskell.org/tutorial/numbers.html) ##
I stumbled upon the different types of / division operators that behave differently for different numbers. Num type in haskell can be of tyo types:
* Integral 
* Fractional
and while other arithmatic operators (+, -, *, negate, abs) are shared across both these types, there are two divisions:
function div for whole number division
/ operator for fractional division

while the other operators can be mixed and matched (as long as they aren't hardwired from Num to something else), 
for division we have to use either div or / based on the need.

        -- a fractional number and integral number can be added, subtracted, multiplied
        ghci> 1 + 1.5
        2.5
        ghci> 1 - 1.5
        0.5
        ghci> 1 * 1.5
        1.5

        -- hs file
        divBySame :: Int -> Int
        divBySame a = a / a -- Won't work since these are hardcoded to be int
        divBySame a = (div a a) -- This will work
        


