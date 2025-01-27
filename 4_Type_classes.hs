class Descriptive a where
    describe :: a -> String

instance Descriptive Int where
    describe x = "The number " ++ show x

instance Descriptive String where
    describe x = "The string " ++ show x

instance Descriptive Bool where
    describe True = "The boolean " ++ show True
    describe False = "yuhhhh " ++ show False

describeLen :: Descriptive a => a -> Int
describeLen x =  length (describe x)


-- Define a custom type class MyEq with constraints
class (Show a, Ord a) => MyEq a where
    myEquals :: a -> a -> Bool
    myNotEquals :: a -> a -> Bool
    myNotEquals x y = not (myEquals x y)  -- Default implementation

-- Create an instance of MyEq for Int
instance MyEq Int where
    myEquals x y = x == y

-- Create an instance of MyEq for String
instance MyEq String where
    myEquals x y = x == y

main :: IO ()
main = do
    print (describeLen (42::Int))  -- Output: "The number 42"