collatz = {1 => 0}
collatz.default_proc = ->(h, k) {
  h[k] = h[k.odd? ? k * 3 + 1 : k / 2] + 1
}
puts 1.upto(1_000_000).map{|i| [i, collatz[i]]}.max_by{|e| e.last}.first
