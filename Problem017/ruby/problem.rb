engword = { 1 => 'one', 2 => 'two',   3 => 'three', 4 => 'four',  5 => 'five',
            6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
           11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
           15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
           18 => 'eighteen', 19 => 'nineteen', 20 => 'twenty', 30 => 'thirty',
           40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy',
           80 => 'eighty', 90 => 'ninety', 1000 => 'one thousand'}
engword.default_proc = ->(h, k) {
  if k < 100
    h[k] = [h[(k / 10) * 10], h[k % 10]].join(' ')
  elsif k % 100 == 0
    h[k] = [h[(k / 100)], 'hundred'].join(' ')
  else
    h[k] = [h[(k / 100)], 'hundred and', h[k % 100]].join(' ')
  end
}

puts 1.upto(1000).map{|i| engword[i]}.join.gsub(' ', '').size
