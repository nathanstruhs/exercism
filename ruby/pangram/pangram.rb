class Pangram
  def self.pangram?(phrase)
    alphabet = {
     'A' => false,
     'B' => false,
     'C' => false,
     'D' => false,
     'E' => false,
     'F' => false,
     'G' => false,
     'H' => false,
     'I' => false,
     'J' => false,
     'K' => false,
     'L' => false,
     'M' => false,
     'N' => false,
     'O' => false,
     'P' => false,
     'Q' => false,
     'R' => false,
     'S' => false,
     'T' => false,
     'U' => false,
     'V' => false,
     'W' => false,
     'X' => false,
     'Y' => false,
     'Z' => false
    }
    phrase.chars.each do |char|
     alphabet[char.upcase] = true
      if alphabet.values.all? { |value| value == true } then return true end 
    end
    false
  end
end

module BookKeeping
  VERSION = 4
end