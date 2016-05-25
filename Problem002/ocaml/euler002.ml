let rec sum_fib_even f1 f2 sum =
  if f1 > 4_000_000 then sum
  else sum_fib_even f2 (f1 + f2) @@
    if f1 mod 2 = 0 then sum + f1 else sum

let () = print_int @@ sum_fib_even 1 2 0
