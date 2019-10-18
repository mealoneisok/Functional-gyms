#### Meshgrid
##### Problem: Given two list L1, L2, write a function `val meshgrid = fn : 'a list * 'b list -> ('a * 'b) list list` to obtain the 2D meshgrid of L1 and L2. 
##### For example: 
> -meshgrid([1, 2, 3, 4, 5], [1, 2, 3]);
> val it = [[(1,1),(1,2),(1,3)],[(2,1),(2,2),(2,3)],[(3,1),(3,2),(3,3)],[(4,1),(4,2),(4,3)],[(5,1),(5,2),(5,3)]] : (int * int) list list
> -meshgrid(["a", "b", "c"], [1, 2, 3]);
> val it = [[("a",1),("a",2),("a",3)],[("b",1),("b",2),("b",3)], [("c",1),("c",2),("c",3)]] : (string * int) list list

<br/><br/><br/><br/><br/><br/><br/><br/><br/>

#### Solution
##### My approach is to first generate 
