rand = do
    putStrLn "Hello World!"
    print (func (0, 1)) -- Output: (1,0)
    print (func (2, 3)) -- Output: (2,3)

func (0,1) = (1,0)      -- Swap for this specific input
func x = x              -- Return the tuple unchanged for all other inputs

func2 a = \n -> a + n -- lambda function

-- func is a higher-order function because it returns a lambda function.

--------------------------

-- repToZero 0 l = 0
-- repToZero n l = n + repToZero (n-1) l -- sum from n to 0

repToZero 0 l = 0
repToZero n l = n + l (repToZero (n-1) l)

--------------------------

guard :: Int -> String
guard x
    | isNegative = "Negative number"
    | isZero     = "Zero"
    | isPositive = "Positive number"
    | otherwise  = "This won't happen"
  where
    isNegative = x < 0     -- Helper condition
    isZero     = x == 0    -- Helper condition
    isPositive = x > 0     -- Helper condition


y = let x = 10+10 in x+x
z = let x = 10 in let x=20 in x  -- output 20 as x has been shadowed by the second let
-- let f = func 5 makes f a variable holding the returned 
-- lambda function (not a higher-order function itself, just a regular function).
main = do 
    rand
    print (func2 2 3) 
    let f = func2 10   -- f is now the function \n -> 10 + n
    print (f 5)       -- Output: 15 (10 + 5)
    print("-------- higher-order functions --------")
    print(repToZero 5 (\x -> x + 1))
    print("-------- guards --------")
    print(guard 0)
    print(guard 5)
    print(guard (-5))
    print("-------- let --------")
    print(y)
    






