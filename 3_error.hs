-- Example 1: Using error for unhandled cases
describeNumber :: Int -> String
describeNumber 0 = "Zero"
describeNumber 1 = "One"
describeNumber _ = error "Only 0 and 1 are allowed!"  -- Throws an error for invalid inputs

-- Example 2: Using error in incomplete functions
headSafe :: [a] -> a
headSafe []    = error "Cannot take the head of an empty list!"  -- Error for empty lists
headSafe (x:_) = x

-- Example 3: Using error as a placeholder (not recommended in production)
notImplemented :: a
notImplemented = error "This function is not implemented yet!"  -- Placeholder error

-- Example 4: Using error with custom error messages
divide :: Int -> Int -> Int
divide _ 0 = error "Division by zero is not allowed!"  -- Error for division by zero
divide x y = x `div` y

-- Main function to demonstrate outputs
main :: IO ()
main = do
    print (describeNumber 0)  -- Output: "Zero"
    print (describeNumber 2)  -- Throws error: "Only 0 and 1 are allowed!"

    print (headSafe [1, 2, 3])  -- Output: 1
    print (headSafe [])         -- Throws error: "Cannot take the head of an empty list!"

    print (notImplemented)      -- Throws error: "This function is not implemented yet!"

    print (divide 10 2)         -- Output: 5
    print (divide 10 0)         -- Throws error: "Division by zero is not allowed!"
