data Tree = Empty | Node Int Tree Tree
  deriving (Show)

insert :: Int -> Tree -> Tree
insert x Empty = Node x Empty Empty
insert x (Node v left right)
  | x < v = Node v (insert x left) right
  | otherwise = Node v left (insert x right)

inorder :: Tree -> [Int]
inorder Empty = []
inorder (Node v left right) = inorder left ++ [v] ++ inorder right

main :: IO ()
main = do
  let t = insert 5 Empty
  let t1 = insert 3 t
  let t2 = insert 7 t1
  let t3 = insert 1 t2
  putStrLn "Inorder Traversal:"
  print (inorder t3)