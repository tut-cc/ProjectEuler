puts (2...1000).select{|v| v % 3 * v % 5 == 0}.inject(:+)
