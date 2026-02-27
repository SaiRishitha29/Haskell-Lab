insertFront x xs=x:xs
insertEnd x xs=xs++[x]
deleteEleme_[]=[]
deleteElement x (y:ys)
 |x==y =ys
 |otherwise=y:deleteElement x ys
main=do
  let l=[1,2,3]
  putStrLn"Origial List:"
  print l
  let l1=insertFront 0 l
  putStrLn "Afetr insertion at Front:"
  print l1
  let l2=insertEnd 4 l1
  putStrLn "After insertion at Gnd:"
  print l2
  let l3=deleteElement 2 l2
  putStrLn "After deleting 2:"
  print l3