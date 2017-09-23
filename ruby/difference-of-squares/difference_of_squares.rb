class Squares
  def initialize(sum)
    sum == 0 ? @range = [0] : @range = (1..sum)
  end

  def square_of_sum
    @range.inject(:+) ** 2
  end

  def sum_of_squares
    @range.map { |i| i ** 2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end