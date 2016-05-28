require 'date'

now = Date.new(1901, 1, 1)
result = 0

until now.year == 2001
  result += 1 if now.sunday?
  now = now >> 1
end

puts result
