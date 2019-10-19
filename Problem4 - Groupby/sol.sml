fun groupHead(_, []) = ([], [])
	| groupHead(opera, [x]) = ([x], [])
	| groupHead(opera, x :: xs)  =	let
						val (y, ys) = groupHead(opera, xs);
		     			in
						if opera(x, hd xs) then (x :: y, ys)
		        			else ([x], xs)
		     			end

fun groupBy(_, []) = []
	| groupBy(opera, xs) =	let
					val (y, ys) = groupHead(opera, xs);
				in
					y :: groupBy(opera, ys)
				end