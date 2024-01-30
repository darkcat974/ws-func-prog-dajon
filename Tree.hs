module Tree where
import Parse
import Text.Read (readMaybe)
data ASTree = Add ASTree ASTree
            | Sub ASTree ASTree
            | Mul ASTree ASTree
            | Div ASTree ASTree
            | Value Int
instance Show ASTree where
    show (Add e1 e2) = show e1 ++ " + " ++ show e2
    show (Sub e1 e2) = show e1 ++ " - " ++ show e2
    show (Mul e1 e2) = show e1 ++ " * " ++ show e2
    show (Div e1 e2) = show e1 ++ " / " ++ show e2
    show (Value n)   = show n

buildExpr :: ASTree -> String -> ASTree -> ASTree
buildExpr x s y =
    case s of
        "+" -> Add x y
        "-" -> Add x y
        "*" -> Add x y
        "/" -> Add x y
        _ -> error "nope"

mapValues :: [String] -> [ASTree]
mapValues [] = []
mapValues (x:y) =
    case readMaybe x of
        Just xs -> Value xs : mapValues y
        Nothing -> error "not a number"
