class SumFixedThreeDiffNumbers
  include Enumerable

  def initialize(sum)
    @sum = sum
  end

  def each
    1.step((@sum - 3) / 3) do |a|
      (a + 1).step((@sum - a - 1) / 2) do |b|
        c = @sum - b - a
        yield a, b, c
      end
    end
  end
end

numbers = SumFixedThreeDiffNumbers.new(1000)

puts numbers.find{|a, b, c| a**2 + b**2 == c**2}.inject(:*)
