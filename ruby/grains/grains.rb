class Grains
  CHESS_SQUARES = 64
  class << self
    def square position
      raise ArgumentError if position < 1 || position > 64
      grain_quantity = 2 ** (position - 1)
    end

    def total
      (1..CHESS_SQUARES).inject { |total, num| total + (2 ** (num - 1)) }
    end
  end
end

module BookKeeping
  VERSION = 1 
end