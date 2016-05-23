puts (1...1000).select{|v| v % 3 * v % 5 == 0}.reduce{|s, i| s + i}
