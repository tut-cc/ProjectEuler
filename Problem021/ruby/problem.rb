require 'prime'

def proper_divisor(n)
  return [] if n < 2
  pfactor = Prime.prime_division(n).map{|n, e|
              [n] * e
            }.flatten
  Array.new(pfactor.size - 1){|i|
    pfactor.combination(i + 1).map{|ns|
      ns.inject(:*)
    }
  }.flatten.uniq.unshift(1)
end

def amicable_number?(n)
  pair = proper_divisor(n).inject(0, :+)
  return false if n == pair # 完全数
  proper_divisor(pair).inject(0, :+) == n
end

puts (2...10000).select{|i| amicable_number?(i)}.inject(:+)
