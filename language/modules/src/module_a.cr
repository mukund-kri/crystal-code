module MouduleA

  extend self
  def hello
    puts "Hello from the global scope"
  end

  private def private_method
    puts "This is a private method"
  end

  def call_private_method
    private_method
  end

end