require 'set'

class Robot

  @@names = []

  def name
    begin
      @name ||= generate_name
    end while @@names.include? @name
    @@names << @name
  end

  def reset
    @name = nil 
  end

  private

  def generate_name
    random_letters + random_numbers
  end

  def random_letters
    2.times.map { [*'A'..'Z'].sample }.join
  end

  def random_numbers
    3.times.map { [*0..9].sample }.join
  end
end

module BookKeeping
  VERSION = 2
end
