open Batteries

let imperative_style s =
  for row = Int.pred @@ Array.length s downto 1 do
    for col = 0 to Int.sub (Array.length s.(row)) 2 do
      s.(row - 1).(col) <- Int.add s.(row - 1).(col) @@ Int.max s.(row).(col) s.(row).(col + 1);
    done;
  done;
  s.(0).(0)

let () =
  Int.print stdout
    (File.lines_of "triangle.txt"
     |> Enum.map (Array.of_list % List.map String.to_int % String.nsplit ~by:" ")
     |> Array.of_enum
     |> imperative_style)
