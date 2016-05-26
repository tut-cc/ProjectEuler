open Batteries

let () =
  let x2 x = Int.pow x 2 in
  let res  = x2       @@ Enum.sum    (1 -- 100) in
  let res' = Enum.sum @@ Enum.map x2 (1 -- 100) in
  Int.print stdout (res - res')
