class HelloWorld
  def self.hello(name="")
    if name.empty?
      "Hello, World!"
    else 
      "Hello, #{name}!"
    end
  end
end