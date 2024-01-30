--
-- EPITECH PROJECT, 2024
-- ws-func-prog-dajon
-- File description:
-- filterArr
--
import Predicates
module Filter where

filterArr:: (a -> Bool) -> [a] -> [a]
filterArr _ [] = []
filterArr a (x:xs)
    | a x == True = x : filterArr a xs
    | otherwise = filterArr a xs

