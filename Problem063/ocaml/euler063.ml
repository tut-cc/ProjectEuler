open Batteries
module LL = LazyList

let solve p = let open Num in
  let len n = of_int @@ String.length @@ to_string @@ pow n p in
  Enum.count @@ Enum.filter (equal p) @@ Enum.map (len % of_int) (1 -- 9)

let () = LL.range 1 Int.max_num
         |> LL.map (solve % Num.of_int)
         |> LL.take_while (fun x -> x > 0)
         |> LL.fold_left (+) 0
         |> Int.print stdout
