-- 9am Lab
-- SeatS:261542

-- (a*bb)*
-- checking if this language holds for a string input


-- LECTURE SOLUTION
-- l[] = True
-- l ('a':s) = (l_seen_a s)
-- l ('b':s) = (l_seen_b s)
-- 
-- l_seen_a [] = False
-- l_seen_a ('b':s) = l_seen_b s
-- l_seen_a ('a':s) = l_seen_a s
-- 
-- l_seen_b [] = False
-- l_seen_b ('b':s) = l s
-- l_seen_b ('a':s) = False

-- MY SOLUTION 1
-- l [] = True
-- l ('a':s) = (l_seen_a s)
-- l ('b':s) = (l_seen_b ('b':s))
-- 
-- l_seen_a [] = False
-- l_seen_a ('b':s) = l_seen_b ('b':s)
-- l_seen_a ('a':s) = l_seen_a s
-- 
-- 
-- l_seen_b ('b':'b':s) = l s
-- l_seen_b other = False



-- MY SOLUTION 2
l [] = True
l ('a':s) = l_seen_a s
l ('b':'b':s) = l s
l other = False

l_seen_a [] = False
l_seen_a ('a':s) = l_seen_a s
l_seen_a ('b':s) = l ('b':s)


-- Coin flipping game

data Game = Win | Lose | Flip Game Game
main = do
    print(l "aaaaabbaabb")

