open Core.Std

let len_collatz t n =
  let next n = if n mod 2 = 0 then n / 2 else 3 * n + 1 in
  let rec loop t l = function
    | 1 -> l
    | n -> match Hashtbl.find t n with
      | None -> loop t (l + 1) (next n)
      | Some l' -> l + l'
  in loop t 0 n

let (_ : unit option) =
  let t = Int.Table.create () in
  let open Option.Monad_infix in
  List.range 1 1_000_000
  |> List.map ~f:(fun n ->
      let l = len_collatz t n in
      let () = Hashtbl.set t ~key:n ~data:l in (n, l))
  |> List.max_elt ~cmp:(fun (_, la) (_, lb) -> Int.compare la lb)
  >>| fst >>| print_int

