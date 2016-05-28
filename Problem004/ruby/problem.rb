puts (0..999).to_a
             .repeated_combination(2)
             .map{|i, j| i * j}
             .select{|e| e.to_s == e.to_s.reverse}
             .max
