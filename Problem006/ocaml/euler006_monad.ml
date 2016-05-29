open Core.Std

let (_: unit option) = let open Option.Monad_infix in
let x2 x = Int.pow x 2 in
let rng  = List.range 1 101 in
  List.reduce ~f:(+) rng                   >>= fun sum ->
  List.map ~f:x2 rng |> List.reduce ~f:(+) >>| fun sum_x2 ->
  print_int @@ (x2 sum) - sum_x2
