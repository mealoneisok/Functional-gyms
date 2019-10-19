fun chunk(k, x) = let
					fun chunk_(0, _, _, _) = []
						| chunk_(_, [], _, buff) = [buff]
						| chunk_(k, x, 0, buff) = buff :: chunk_(k, x, k, [])
						| chunk_(k, x::xs, b_k, buff) = chunk_(k, xs, b_k - 1, buff @ [x])
				  in
				  	chunk_(k, x, k, [])
				  end