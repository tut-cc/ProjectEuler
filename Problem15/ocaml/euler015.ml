open Batteries
open BatNum

let rec fact_with_bottom top bottom =
  if top <=/ bottom then bottom else top * fact_with_bottom (top - one) bottom

let (--) = fact_with_bottom

let fact top = fact_with_bottom top one

let () =
  (* OCaml don't have ad-hoc polymorphism, which make it redundant to handle original literals :( *)
  print stdout @@ ((of_int 40) -- (of_int 21)) / (fact @@ of_int 20)
