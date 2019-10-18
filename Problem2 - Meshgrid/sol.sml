fun repeat(_, 0) = []
	| repeat(xs, len) = xs :: repeat(xs, len - 1)

fun vtile(xs : 'a list, len) = repeat(xs, len)

fun htile([], _) = []
	| htile(xs, len) = repeat(hd xs, len) :: htile(tl xs, len)

fun meshgrid(xs, ys) = 
	let 
		val x = htile(xs, length(ys))
		val y = vtile(ys, length(xs))
	in
		ListPair.map ListPair.zip (x, y)
	end


