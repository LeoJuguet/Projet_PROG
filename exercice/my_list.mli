type 'a my_list =
| Nil
| Cons of 'a * 'a my_list

(** Take a list and return a string
   @param f function take a value and apply a string
   @param l list of value
*)
val string_of_list: ('a -> string) -> 'a my_list -> string

(** Return the first element of a my_list
    @param l a my_list
*)
val hd: 'a my_list -> 'a option

(** Return the end of a my_list
    @param l a my_list variable
*)
val tl: 'a my_list -> 'a my_list option

(** Return the length of a my_list
    @param l a my_list variable
*)
val length: 'a my_list -> int

(** Return a my_list ho the f function is apply
    @param l a function 'a to 'b
    @param l a my_list variable
*)
val map: ('a -> 'b) -> 'a my_list -> 'b my_list
