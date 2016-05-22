open Batteries

module LL = BatLazyList

let rec prime s = function
  | 10001 -> LL.hd s
  | n ->
      let h = LL.hd s in
      let s' = LL.filter (fun x -> x mod h <> 0) @@ LL.tl s in
      prime s' (succ n)

let () = (* Composition of functions must be also OK :) *)
  let seq = LL.seq 2 succ (fun _ -> true) in
  Int.print stdout @@ prime seq 1
