-- 1. Custom Type Constructor (MyMaybe)
data MyMaybe a = MyNothing | MyJust a deriving (Show)
example1 :: MyMaybe Int
example1 = MyJust 42  -- Type constructor `MyJust` wraps the value 42

-- 2. Custom Type Constructor (Pair)
data Pair a b = Pair a b deriving (Show)
example2 :: Pair Int String
example2 = Pair 1 "Hello"  -- Type constructor `Pair` creates a pair

-- 3. Recursive Type Constructor (List)
data List a = Empty | Cons a (List a) deriving (Show)
example3 :: List Int
example3 = Cons 1 (Cons 2 (Cons 3 Empty))  -- Represents a list [1, 2, 3]

-- 4. Type Constructor with Parameters (Result)
data Result e a = Error e | Success a deriving (Show)
example4 :: Result String Int
example4 = Success 100  -- Type constructor `Success` holds the value 100

-- 5. Enum-like Type Constructor (TrafficLight)
data TrafficLight = Red | Yellow | Green deriving (Show)
example5 :: TrafficLight
example5 = Green  -- Type constructor `Green` is a value of type `TrafficLight`


myApp :: (Int -> Bool) -> Int -> Bool
myApp f x = f x

evenF :: Int -> Bool
evenF x = x `mod` 2 == 0




main :: IO ()
main = do
    print example1  -- Output: MyJust 42
    print example2  -- Output: Pair 1 "Hello"
    print example3  -- Output: Cons 1 (Cons 2 (Cons 3 Empty))
    print example4  -- Output: Success 100
    print example5  -- Output: Green
    print (myApp evenF 42)  -- Output: True
