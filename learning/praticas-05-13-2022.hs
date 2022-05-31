import Data.Maybe

data Expr = Val Int
        | Add Expr Expr
        | Sub Expr Expr
        | Mul Expr Expr
        | Div Expr Expr
        deriving Show

--       from ufabc_hal - Chapter 11.1
-- https://www.youtube.com/watch?v=GTWZbeuOwb8
-- https://www.youtube.com/watch?v=DTj0bFdo7Us

eval :: Expr -> Maybe Int
eval ( Val x ) = Just x
eval ( Div x y ) = eval x >>= \n ->
                   eval y >>= \m ->
                   maybeDiv n m

evalDO :: Expr -> Maybe Int
evalDO ( Val x ) = Just x
evalDO ( Div x y ) =
    do  n <- evalDO x
        m <- evalDO y
        maybeDiv n m

maybeDiv x 0 = Nothing
maybeDiv x y = Just ( x `div` y)


--       from ufabc_hal - Chapter 11.3

-- Não-Determinismo usando monad e listas 

data Dado = Um | Dois | Tres | Quatro | Cinco | Seis
    deriving ( Show, Bounded, Enum, Eq)

jogueDado = [ Um .. Seis]

jogueDuasVezes = 
    do dado1 <- jogueDado
       dado2 <- jogueDado
       return ( dado1, dado2 )

itIsMagic :: Dado -> [Dado]
itIsMagic dado
    |   any ( dado == ) [Um, Tres, Cinco] = [Dois, Quatro, Seis]
    |   otherwise                         = [Um, Tres, Cinco]


jogueDuasVezes' :: [( Dado, Dado )]
jogueDuasVezes' = 
    do dado1 <- jogueDado
       dado2 <- itIsMagic dado1
       return ( dado1, dado2 )


--       from ufabc_hal - Chapter 11.4 
-- https://www.youtube.com/watch?v=3CRqf13q7p4

--Exceções usando Either

--instance Functor ( Either a) where
--        fmap f ( Left x ) = Left x
--        fmap f ( Right x ) = Right ( f x )


safeDivE :: ( Show a, Eq a, Floating a) => a -> a -> Either String a
safeDivE a b
    | b == 0 = Left ( "Dividindo por zero: " ++ show a ++ " `div` " ++ show b)
    | otherwise = Right ( a / b )


safeLog :: ( Show a, Ord a, Floating a) => a -> Either String a
safeLog x
    | x <= 0 = Left ( "log invalido: " ++ show x)
    | otherwise = Right ( log x )


safeAdd :: Floating a => a -> a -> Either String a
safeAdd a b = Right ( a + b )

-- Rodando testes com as funções criadas acima
safeExpr1, safeExpr2 :: Either String Double

safeExpr1 =
    do  q <- safeDivE 10 (-2)
        l <- safeLog q
        safeAdd 2 l

safeExpr2 =
    do  q <- safeDivE 10 0
        l <- safeLog q
        safeAdd 2 l


