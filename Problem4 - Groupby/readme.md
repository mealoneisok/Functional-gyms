# Problem4 - GroupBy

## Description
Given a list and a binary predicate, the function `val groupBy = fn : ('a * 'a -> bool) * 'a list -> 'a list list` groups the adjacent elements in the list according to the predicate.

## Example
> \- groupBy(op =, [1,1,1,1,1,1,2,3,3,3,3,3,4,4,4,4,5,6,6]);
> 
> val it = [[1,1,1,1,1,1],[2],[3,3,3,3,3],[4,4,4,4],[5],[6,6]] : int list list
> 
> \- groupBy(op <=, [1,2,2,3,1,2,0,4,5,2]);
> 
> val it = [[1,2,2,3],[1,2],[0,4,5],[2]] : int list list
> 
> \- groupBy(op <>, ["a","b","b","c","c","c","a","a"]);
> val it = [["a","b"],["b","c"],["c"],["c","a"],["a"]] : string list list

## Solution
The solution is similar to the solution in [Problem3 - Chunk](../Problem3%20-%20Chunk).
