let rec mergesort u = 
	if List.length u < 2
	then u
	else match split u with
	| (l, r) ->  combine (mergesort l) (mergesort r) [] 

and split u = 
	let rec splitting l r u =
		match u with
		| [] -> (l, r) 
		| firstVal::otherVals ->
		splitting r (firstVal::l) otherVals	
	in splitting [] [] u 

and combine l r s =
	match l, r with 
	| [], [] -> s
	| firstVal::otherVals, [] |  [], firstVal::otherVals ->
	combine [] otherVals (s@[firstVal])
	| firstL::otherL, firstR::otherR ->
	if (firstL <= firstR)
		then combine otherL r (s@[firstL])
		else combine l otherR (s@[firstR]) ;;




mergesort [];;
mergesort[0];;
mergesort[1;3;2;1];;
mergesort[200; 3; 2; 1; 20; 200];;
mergesort[200; 20; 1; 2; 30];;
mergesort[2000; 200; 30; 20; 9; 1; 2;];;
mergesort[2000; 200; 30; 20; 9; 1; 2; 89; 200; 1];;

