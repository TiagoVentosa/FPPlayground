module Module1.Basics where

{- Haskell is a programming language that is:
    Strongly Typed
    Statically Typed
    Purely Functional
    Lazy Evaluated by default
    With a good type inference
-}

--Let's start small and define a simple addition function
myAdd a b = a + b

-- we can now use this function in other functions defined here, or even in values
-- We didn't defined the type, so it is inferred. We can also give a type signature so it is more explicit what types we can use

myAdd' :: Int -> Int -> Int
myAdd' a b = myAdd a b

-- notice how the above type signature does not diferentiate what is parameter and what is a return value
-- this is because in haskell every function is curried by default.

--let's introduce some basic sctructures: Lists and tuples
list = [1,2,3]

-- Tuples
tuple= (5, True)

--Every value in haskell is immutable, so if we use the above value, we don't modify it
list' = map (myAdd' 2) list  
list'' = 5:list'

--Since haskell is lazy, we can actually define a function using a value before the value is defined. 
--You can thing of every single function as a simple name that is binded to something else when needed

half :: Int -> Int 
half a = div a two

two = 2

--Haskell lazyness also permits us to define and use infinite lists without problem

primes :: Int -> [Int]
primes n = take n allPrimes

allPrimes :: [Int]
allPrimes = filter isPrime [1..]
  where isPrimes