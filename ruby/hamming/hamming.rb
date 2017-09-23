module BookKeeping
  VERSION = 3
end

class Hamming 

  def self.compute(sequence_one, sequence_two)
    raise ArgumentError if sequence_one.length != sequence_two.length
    difference = 0
    for nucleotide in 0...sequence_one.length
      if sequence_one[nucleotide] != sequence_two[nucleotide]
        difference += 1 
      end
    end 
    difference
  end
end