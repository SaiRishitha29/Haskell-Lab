type Stack = [Int]

push :: Int -> Stack -> Stack
push x s = x : s

pop :: Stack -> Stack
pop []     = []
pop (_:xs) = xs

peek :: Stack -> Int
peek []    = error "Stack is empty"
peek (x:_) = x

isEmpty :: Stack -> Bool
isEmpty [] = True
isEmpty _  = False

main :: IO ()
main = do
    let s = [] :: Stack
    putStrLn "Initial Stack:"
    print s

    let s1 = push 10 s
    let s2 = push 20 s1

    putStrLn "After pushing 10 and 20:"
    print s2

    let top = peek s2
    putStrLn "Top element:"
    print top

    let s3 = pop s2
    putStrLn "After pop:"
    print s3

    let empty = isEmpty s3
    putStrLn "Is Stack Empty:"
    print empty