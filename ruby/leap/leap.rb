class Year 
  def self.leap? year 
    year.modulo(4).zero? && year.modulo(100).nonzero? || year.modulo(400).zero? 
  end
end

module BookKeeping
  VERSION = 2
end