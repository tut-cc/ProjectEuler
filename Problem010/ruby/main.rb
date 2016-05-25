require 'prime'
#ワンライナー
puts Prime.each(2_000_000).to_a.inject(:+)

#分割
#n = 2_000_000
#sum = 0
#Prime.each(n) do |variable|
#	sum += variable
#end
#puts sum