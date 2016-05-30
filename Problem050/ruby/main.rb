require 'prime'

max = 1_000_000
#max = 100

primes = Prime.each(max).to_a

cnt = 0
ans = 0
sum = 0

primes.length.times do |i|
	sum = 0
	i.upto(primes.length-1)	do |j|	
		sum += primes[j]
		if sum > max
			break
		end
		if Prime.prime?(sum) && j-i+1 > cnt 
			cnt = j-i+1
			ans = sum
		end
	end
end 

p ans