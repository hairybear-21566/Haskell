-- Examples of Higher-Order Functions in Haskell

-- 1. map: Apply a function to each element in a list
doubleList = map (*2) [1, 2, 3, 4]  -- Output: [2, 4, 6, 8]

-- 2. filter: Select elements that satisfy a predicate
evens = filter even [1, 2, 3, 4, 5, 6]  -- Output: [2, 4, 6]

-- 3. foldr and foldl: Reduce a list to a single value
sumList = foldr (+) 0 [1, 2, 3, 4]       -- Output: 10
productList = foldl (*) 1 [1, 2, 3, 4]   -- Output: 24

-- 4. zipWith: Combine two lists element-wise
sumPairs = zipWith (+) [1, 2, 3] [4, 5, 6]  -- Output: [5, 7, 9]

-- 5. compose (.) operator: Chain functions together
doubleThenSubtract = (subtract 1) . (*2)
resultCompose = doubleThenSubtract 5  -- Output: 9

-- 6. apply ($) operator: Simplify function application
resultApply = sum $ map (*2) [1, 2, 3, 4]  -- Output: 20

-- 7. curry and uncurry: Convert between tupled and multi-argument functions
addTuple = uncurry (+)
resultUncurry = addTuple (3, 4)  -- Output: 7

add = curry (\(x, y) -> x + y)
resultCurry = add 3 4  -- Output: 7

-- 8. flip: Flip the order of arguments
flippedSubtract = flip (-)
resultFlip = flippedSubtract 5 10  -- Output: 5

-- 9. iterate: Generate an infinite list by repeatedly applying a function
powersOfTwo = take 5 $ iterate (*2) 1  -- Output: [1, 2, 4, 8, 16]

-- 10. Custom higher-order function: Apply a function twice
applyTwice f x = f (f x)
resultCustom = applyTwice (*2) 3  -- Output: 12

-- Printing all results
main = do
    print doubleList
    print evens
    print sumList
    print productList
    print sumPairs
    print resultCompose
    print resultApply
    print resultUncurry
    print resultCurry
    print resultFlip
    print powersOfTwo
    print resultCustom
