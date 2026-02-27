type Graph = [(Int, [Int])]

neighbours :: Int -> Graph -> [Int]
neighbours v [] = []
neighbours v ((x, adj):xs)
  | v == x    = adj
  | otherwise = neighbours v xs

main :: IO ()
main = do
  let graph = [(1, [2, 3]), (2, [1, 4]), (3, [1]), (4, [2])]
  putStrLn "Graph:"
  print graph
  putStrLn "Neighbours of 2:"
  print (neighbours 2 graph)