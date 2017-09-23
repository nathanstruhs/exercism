class Bob

  class << self 
    def hey(remark)
      if  !/\w+/.match(remark)  
        'Fine. Be that way!'
      elsif remark == remark.upcase && remark[/[a-zA-Z]/]
        'Whoa, chill out!'
      elsif remark[-1] == '?'
        'Sure.'
      else
        'Whatever.'
      end
    end
  end
end