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

def sub_of_sum_of_proper_divisor(n)
  proper_divisor(n).inject(0, :+) - n
end

@abundants = (1..28123).select{|n|
               sub_of_sum_of_proper_divisor(n) > 0
             }

def abundant_sum?(n)
  hnidx = @abundants.bsearch_index{|x| x >= n / 2}
  return false if n < @abundants[hnidx]
  @abundants[0..hnidx].any?{|m|
    @abundants.bsearch{|x| x >= n - m} == n - m
  }
end

puts (1..28123).reject{|i|
       abundant_sum?(i)
     }.inject(:+)
