fun chunkHead(_, []) = ([], [])
	| chunkHead(size, x :: xs)  =	let
						val (y, ys) = chunkHead(size - 1, xs);
		     			in
						if size > 1 then (x :: y, ys)
						else ([x], xs)
		     			end

fun chunk(_, []) = []
	| chunk(size, xs) =	let
					val (y, ys) = chunkHead(size, xs);
				in
					y :: chunk(size, ys)
				end