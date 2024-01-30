--
-- EPITECH PROJECT, 2024
-- ws-func-prog-dajon
-- File description:
-- Parse
--
module Parse where

isDigit :: [Char] -> Bool
isDigit [] = True
isDigit (x:xs)
    | (x >= '0' && x <= '9') = isDigit xs
    | otherwise = False

isString :: [Char] -> Bool
isString [] = True
isString (x:xs) =
    case x of
        '+' -> isString xs
        '-' -> isString xs
        '*' -> isString xs
        '/' -> isString xs
        _ -> False

addition :: Int -> Int -> Int
addition a b = a + b

-- substraction
substraction :: Int -> Int -> Int
substraction a b = a - b

-- multiply
multiply :: Int -> Int -> Int
multiply a b = a * b

divide :: Int -> Int -> Maybe Int
divide _ 0 = Nothing
divide x s = Just (x `div` s)

filterArr:: (a -> Bool) -> [a] -> [a]
filterArr _ [] = []
filterArr a (x:xs)
    | a x == True = x : filterArr a xs
    | otherwise = filterArr a xs



parseLine :: [String] -> ([String], [String])
parseLine [] = ([],[])
parseLine a = (filterArr isString a, filterArr isDigit a)
