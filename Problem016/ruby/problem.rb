puts (2**1000).to_s.chars.inject(0){|s, i| s + i.to_i}
