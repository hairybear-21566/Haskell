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