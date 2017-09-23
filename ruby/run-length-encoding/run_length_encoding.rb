class RunLengthEncoding
  class << self

    def encode(input)
      encoding = ''
      arr = input.chars.chunk { |c| c }.map { |_, a| a.join }
      arr.each do |grouping|
        length = grouping.length == 1 ? '' : grouping.length
        encoding << "#{length}""#{grouping[0]}"
      end
      encoding
    end

    def decode(input)
      input.scan(/(\d*)(\D)/).map { |len, char| len.empty? ? char : char * len.to_i }.join
    end
  end
end

module BookKeeping
  VERSION = 2
end

