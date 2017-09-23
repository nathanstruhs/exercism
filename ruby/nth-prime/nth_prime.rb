class Prime
  def self.nth(number)
    max = number * (Math.log(number) + 2)
    primes = (2..max).to_a
    primes.each {|num| primes.delete_if {|i| i > num && (i % num) == 0} }
    primes[number-1]
  end
end

module BookKeeping
  VERSION = 1
end