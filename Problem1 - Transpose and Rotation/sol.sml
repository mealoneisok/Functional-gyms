fun transpose2d [] = []
	| transpose2d ([]::_) = []
	| transpose2d mat = map hd mat :: transpose2d (map tl mat)

fun rot90 mat = map rev (transpose2d mat)