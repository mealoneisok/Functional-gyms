# Problem1 - Transpose and Rotation

## Description
Given a n * m matrix (in the type 'a list list), the function `val transpose2d = fn : 'a list list -> 'a list list` find its transpose and the function `val rot90 = fn : 'a list list -> 'a list list` rotate it by 90 degrees
in clockwise direction.

## Example
> \- transpose2d([["a","b","c"], ["d","e","f"]]);
> 
> val it = [["a","d"],["b","e"],["c","f"]] : string list list
> 
> \- transpose2d([[1,2,3,4]]);
> 
> val it = [[1],[2],[3],[4]] : int list list
> 
> \- transpose2d([[1.0],[2.0],[3.0],[4.0]]);
> 
> val it = [[1.0,2.0,3.0,4.0]] : real list list
> 
> \- rot90([["a","b","c"], ["d","e","f"]]);
> 
> val it = [["d","a"],["e","b"],["f","c"]] : string list list
> 
> \- rot90([[1,2,3,4]]);
> 
> val it = [[1],[2],[3],[4]] : int list list
>
> \- rot90([[1.0],[2.0],[3.0],[4.0]]);
> 
> val it = [[4.0,3.0,2.0,1.0]] : real list list
> 


## Solution
To tranpose a matrix, just get the first elements in each row and do that again on the remaining columns.
To rotate a matrix by 90 degrees, we can first tranpose it and reverse each row in the matrix.
