class Complement
  DNA_TO_RNA = { 'G' => 'C',
                 'C' => 'G',
                 'T' => 'A',
                 'A' => 'U' }

  def self.of_dna(strand)
    strand.chars.map { |nucleotide| DNA_TO_RNA.fetch(nucleotide) }.join
  rescue KeyError
    ""
  end
end

module BookKeeping
  VERSION = 4
end