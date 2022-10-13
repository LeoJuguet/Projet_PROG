type 'a my_list =
| Nil
| Cons of 'a * 'a my_list;;

let string_of_list f l =
  let rec aux l = match l with
    | Nil -> "]"
    | Cons(a, Nil) -> f a^"]"
    | Cons (a,q) -> f a^", " ^ aux q
  in "["^aux l;;

let hd l = match l with
  | Nil -> None
  | Cons (t,q) -> Some t;;

let tl l = match l with
  | Nil -> None
  | Cons (a,b) -> Some b;;

let rec length l = match l with
  | Nil -> 0
  | Cons (a,b) -> 1 + length b;;

let rec map f l = match l with
  | Nil -> Nil
  | Cons (a,b) -> Cons ( f a, map f b);;
