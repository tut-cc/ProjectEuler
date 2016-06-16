arr = Enum.shuffle(1..999)
parent = self()
pids = Enum.map(arr , fn(n) ->
  spawn fn ->
    cond do
      rem(n,5)  == 0 -> send parent,n
      rem(n,3)  == 0 -> send parent,n
      true -> send parent,0
    end
  end
end)

result = Enum.map(pids , fn(_) ->
  receive do
    n->n
  end
end)

IO.puts Enum.sum(result)
