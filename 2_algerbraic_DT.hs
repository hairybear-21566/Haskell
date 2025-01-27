-- 1. Simple Sum Type (Either one case or another)
data Color = Red | Green | Blue deriving (Show)

example1 :: Color
example1 = Red  -- A value of type `Color`

-- 2. Sum Type with Values (Enum-like with additional data)
data Shape = Circle Float | Rectangle Float Float deriving (Show)

example2 :: Shape
example2 = Rectangle 3.0 4.0  -- A Rectangle with dimensions

-- 3. Product Type (Combining multiple fields)
data Person = Person { name :: String, age :: Int } deriving (Show)

example3 :: Person
example3 = Person { name = "Alice", age = 30 }  -- A Person record

-- 4. Recursive Type (List-like structure)
data MyList a = Empty | Cons a (MyList a) deriving (Show)

example4 :: MyList Int
example4 = Cons 1 (Cons 2 (Cons 3 Empty))  -- A custom list [1, 2, 3]

-- 5. Sum and Product Combined (Complex ADT)
data Result e a = Error e | Success a deriving (Show)

example5 :: Result String Int
example5 = Success 100  -- A result that holds an integer

-- 6. Parameterized Type (Generic container)
data Box a = Box a deriving (Show)

example6 :: Box String
example6 = Box "Hello, World!"  -- A Box holding a string

-- 7. Enum-like Sum Type with Guards
data TrafficLight = RedLight | YellowLight | GreenLight deriving (Show)

trafficLightMessage :: TrafficLight -> String
trafficLightMessage RedLight    = "Stop!"
trafficLightMessage YellowLight = "Caution!"
trafficLightMessage GreenLight  = "Go!"

example7 :: String
example7 = trafficLightMessage GreenLight  -- Output: "Go!"


-- Main function to demonstrate outputs
main :: IO ()
main = do
    print example1  -- Output: Red
    print example2  -- Output: Rectangle 3.0 4.0
    print example3  -- Output: Person {name = "Alice", age = 30}
    print example4  -- Output: Cons 1 (Cons 2 (Cons 3 Empty))
    print example5  -- Output: Success 100
    print example6  -- Output: Box "Hello, World!"
    print example7  -- Output: "Go!"