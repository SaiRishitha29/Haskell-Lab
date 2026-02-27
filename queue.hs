type Queue = [Int]

enqueue :: Int -> Queue -> Queue
enqueue x q = q ++ [x]

dequeue :: Queue -> Queue
dequeue [] = []
dequeue (_:xs) = xs

front :: Queue -> Int
front [] = error "Queue is Empty"
front (x:_) = x

isEmpty :: Queue -> Bool
isEmpty [] = True
isEmpty _ = False

main :: IO ()
main = do
    let q = [] :: Queue
    putStrLn "Initial Queue:"
    print q
    
    let q1 = enqueue 10 q
    let q2 = enqueue 20 q1
    
    putStrLn "Queue after enqueue:"
    print q2
    
    putStrLn "Front element:"
    print (front q2)
    
    let q3 = dequeue q2
    putStrLn "After dequeue:"
    print q3
    
    putStrLn "Is Queue Empty:"
    print (isEmpty q3)