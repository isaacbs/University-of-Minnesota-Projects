type proposition = 
  False | 
  True | 
  Var of string | 
  And of proposition * proposition | 
  Or of proposition * proposition | 
  Not of proposition | 
  Imply of proposition * proposition | 
  Equiv of proposition * proposition ;;

type conditional = 
 IffyFalse | 
 IffyTrue | 
 IffyVar of string | 
 If of conditional * conditional * conditional ;;

let rec ifify p =
match p with 
False 	-> IffyFalse |
True  	-> IffyTrue |
Var(s) 	-> IffyVar(s) |
And(a,b) 	-> If((ifify a), (ifify b), IffyFalse) |
Or(a,b)	-> If((ifify a), IffyTrue, (ifify b)) |
Not(a) 	-> If((ifify a), IffyFalse, IffyTrue) |
Imply(a,b)-> If((ifify a), (ifify b), IffyTrue) |
Equiv(a,b)-> If((ifify a), (ifify b), If((ifify b), IffyFalse, IffyTrue));;

let rec normalize c =
	match c with
	If((If(pi,a1,b1)),a2,b2) -> normalize((If(normalize(pi), If(normalize(a1), normalize(a2), normalize(b2)), If(normalize(b1), normalize(a2), normalize(b2))))) |
	_ -> c;;

 let rec substitute c v b = 
	match c with
	If(pi, a, b1) -> If((substitute pi v b ), (substitute a v b ), (substitute b1 v b )) |
	_ -> if c = v
	then b 
	else c;;

 (* let rec simplify c =  									//different form of simplify, which utilizes a match instead of nested ifs, I wrote when trying to figure out where my errors were. Both versions work.
	match c with
	If(pi, a, b) -> 
		let a1 = simplify(substitute a pi IffyTrue) in
		let b1 = simplify(substitute b pi IffyFalse) in
		(match c with 
		If(IffyTrue, a1, b1) -> a1 |
		If(IffyFalse, a1, b1) -> b1 |
		If(pi, IffyTrue, IffyFalse) -> pi |
		_ -> (if a1 = b1
					then a1
			  else If(pi, a1, b1))) |
	_ -> c;;  *)

let rec simplify c =
	match c with
	If(pi, a, b) -> (
		let a1 = simplify(substitute a pi IffyTrue) in
		let b1 = simplify(substitute b pi IffyFalse) in
		let c1 = If(pi, a1, b1) in
		if c1 = If(IffyTrue, a1, b1)
			then a1
		else if c1 = If(IffyFalse, a1, b1)
			then b1
		else if c1 = If(pi, IffyTrue, IffyFalse)
			then pi
		else if a1 = b1
			then a1
		else c1) |
		_ -> c;; 


let tautology p =
	match simplify (normalize (ifify p)) with
	IffyTrue -> true |
	_ -> false;;


let q1 =  (Imply    (Not      (And        (Var "p", Var "q")),     Or      (Not        (Var "p"),       Not        (Var "q")))) ;; (* Is a tautology *)
let q2 =  (And(Var "p", Var "q")) ;; (* Is not a tautology *)
let q3 =  (Equiv	(Imply(Var "p", Var "q"), (Imply (Not(Var "q"), (Not(Var "p"))))));; (* Is a tautology known as 'reductio ad absurdum' *)
tautology(q1);;
tautology(q2);;
tautology(q3);;


(* # #use "project2.ml";;
type proposition =
    False
  | True
  | Var of string
  | And of proposition * proposition
  | Or of proposition * proposition
  | Not of proposition
  | Imply of proposition * proposition
  | Equiv of proposition * proposition
type conditional =
    IffyFalse
  | IffyTrue
  | IffyVar of string
  | If of conditional * conditional * conditional
val ifify : proposition -> conditional = <fun>
val normalize : conditional -> conditional = <fun>
val substitute : conditional -> conditional -> conditional -> conditional =
  <fun>
val simplify : conditional -> conditional = <fun>
val tautology : proposition -> bool = <fun>
val q1 : proposition =
  Imply (Not (And (Var "p", Var "q")), Or (Not (Var "p"), Not (Var "q")))
val q2 : proposition = And (Var "p", Var "q")
val q3 : proposition =
  Equiv (Imply (Var "p", Var "q"), Imply (Not (Var "q"), Not (Var "p")))
- : bool = true
- : bool = false
- : bool = true *)