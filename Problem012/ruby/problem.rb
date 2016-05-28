require 'prime'

result = 0

1.upto(Float::INFINITY) do |i|
  result += i
  pfactor = Prime.prime_division(result).map{|n, e|
              [n] * e
            }.flatten
  n_pfactor =  Array.new(pfactor.size){|i|
                 pfactor.combination(i + 1).map{|ns|
                   ns.inject(:*)
                 }
               }.flatten.uniq.size
  if 500 < n_pfactor
    puts result
    break
  end
end
