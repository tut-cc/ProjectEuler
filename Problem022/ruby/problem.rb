require 'csv'

puts CSV.read('./names.txt').flatten.sort.map.with_index{|n, idx|
       (idx + 1) * n.chars.map{|c| c.ord - 64}.inject(:+)
     }.inject(:+)
