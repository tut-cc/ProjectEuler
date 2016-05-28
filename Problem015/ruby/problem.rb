def fact(i)
  (1..i).inject(:*)
end

x = 20
y = 20

puts fact(x + y) / (fact(x) * fact(y))
