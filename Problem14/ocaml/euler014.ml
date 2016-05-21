open Core.Std

let len_collatz t n =
  let next n = if n mod 2 = 0 then n / 2 else 3 * n + 1 in
  let rec loop t l = function
    | 1 -> l
    | n ->
        match Hashtbl.find t n with
        | None -> loop t (l + 1) (next n)
        | Some l' -> l + l'
  in
  loop t 0 n

let () =
  let t = Int.Table.create () in
  List.range 1 1_000_000
  |> List.fold_left ~init:(0, 0) ~f:(
    fun (n_old, l_old) n ->
      let l = len_collatz t n in
      Hashtbl.set t ~key:n ~data:l;
      if l_old < l then (n, l) else (n_old, l_old))
  |> fst
  |> print_int

(* I can't come up with a smart implement... *)
