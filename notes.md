__Maybe__ is a type constructor which is used in places where we are expecting what are otherwise called "null" values in imperative languages.

The RWH explaination was a bit confusing, but after banging enough head, I came to know what it's used for.
The definition of Maybe is like:
		
		Maybe a = Just a
				| Nothing
				
The usage is pretty simple, once it is understood. 


## Num ##
The num