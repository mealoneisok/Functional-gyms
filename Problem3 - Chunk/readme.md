# Problem3 - Chunk

## Description
Given a list X and a positive integer k, the function `val chunk = fn : int * 'a list -> 'a list list`  splits X into n chunks of size k. Note that if the length of X cannot be divided by k, the length of the last chunk is less than k.

## Example
> \- chunk(4, [1,1,1,1,2,1,1,3,3,4,5,6,7,7,7,7,8,8]);
> 
> val it = [[1,1,1,1],[2,1,1,3],[3,4,5,6],[7,7,7,7],[8,8]] : int list list
> 
> \- chunk(4, [1,1,1]);
> 
> val it = [[1,1,1]] : int list list
> 
> \- chunk(1, ["a","b","c"]);
> val it = [["a"],["b"],["c"]] : string list list

## Solution
One approach is to first define a helper function `val chunkHead = fn : int * 'a list -> 'a list * 'a list`. What it does is just process the first k chunk and return the rest. So we can call it repeatedly until there is no remaining list (see sol1.sml).
The second approach uses the buffer trick (see sol2.sml).
