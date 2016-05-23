fib = Hash.new{|h, k| h[k] = k <= 2 ? k : h[k - 1] + h[k - 2]}

res = 0
1.upto(Float::INFINITY) do |i|
  break if fib[i] > 4_000_000
  res += fib[i] if fib[i] % 2 == 0
end
puts res
