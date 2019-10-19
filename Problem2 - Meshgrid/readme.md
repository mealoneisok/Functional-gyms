# Problem2 - Meshgrid

## Description
Given two list L1, L2, write a function `val meshgrid = fn : 'a list * 'b list -> ('a * 'b) list list` to obtain the 2D meshgrid of L1 and L2. 

## Example
> \- meshgrid([1,2,3,4,5], [1,2,3]);
>
> val it = [[(1,1),(1,2),(1,3)],[(2,1),(2,2),(2,3)],[(3,1),(3,2),(3,3)],[(4,1),(4,2),(4,3)],[(5,1),(5,2),(5,3)]] : (int * int) list list
>
> \- meshgrid(["a","b","c"], [1,2,3]);
>
> val it = [[("a",1),("a",2),("a",3)],[("b",1),("b",2),("b",3)], [("c",1),("c",2),("c",3)]] : (string * int) list list

## Solution
My approach is to first generate two matrices X and Y by broadcasting L1 horizontally and L2 vertically respectively. We define htile and vtile to do so and the following is some example: 
> \- htile([1,2,3], 3); (* repeat [1,2,3].T by 3 times horizontally *)
>
> val it = [[1,1,1], [2,2,2], [3,3,3]] : int list list
>
> \- vtile([1,2,3], 3); (* repeat [1,2,3] by 3 times vertically *)
>
> val it = [[1,2,3], [1,2,3], [1,2,3]] : int list list

The solution is then obvious - just zip each of the elements in X and Y and it is done.
