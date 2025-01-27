-- polymorphism and ad-hoc polymorphism

-- polymorphism: ability to use the same function in different ways (same func for all types)
-- ad-hoc polymorphism: ability to use the same function in different ways, but with different types (overloading)

-- polymorphism
f:: a -> Bool
f x = True

-- ad-hoc polymorphism
g:: Num a => a -> a
g x = x
