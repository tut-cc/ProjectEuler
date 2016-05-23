sum = 0

3.upto(999) do |i|
	if i%3==0 || i%5==0
		sum += i
	end
end

p sum