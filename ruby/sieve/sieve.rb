class Sieve 
  def initialize(limit)
    @range = (0..limit).to_a
    @limit = limit 
  end

  def primes
    @range[0] = @range[1] = nil
    @range.each do |p|
      next unless p
      break if p ** 2 > @limit
      (p ** 2).step(@limit, p) { |m| @range[m] = nil }
    end
    @range.compact
  end
end

module BookKeeping
  VERSION = 1
end