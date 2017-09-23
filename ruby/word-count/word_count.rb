class Phrase
  attr_accessor :sentence

  def initialize(sentence)
    @sentence = sentence.downcase.gsub(/\p{P}(?<!')/,' ').split(" ")
    @sentence.map { |word| word.gsub!(/[!!&@$%^&]/, '') }
    @sentence.map { |word| if word.chars.first == '\'' && word.chars.last == '\'' then word.gsub!(/\'/, '') end }
    @sentence.reject!(&:empty?)
  end

  def word_count
    hash = Hash.new
    @sentence.map do |word| 
      if hash.member?(word)
        hash[word] += 1
      else
        hash[word] = 1
      end
    end
    hash
  end
end

module BookKeeping
  VERSION = 1
end