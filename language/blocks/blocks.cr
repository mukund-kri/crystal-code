# playing around with blocks in crystal

# Let's explore one of the most common block consuming methods. The Array.each.
array1 = [1, 2, 3]
puts array1

array1.each do |i|
  puts i
end

# Syntax varients to do ... end
array1.each { |i|
  puts i
}

# Consuming blocks is all about the yield statement
# This function consumes a block, and calles it twice
def twice(&)
  yield
  yield
end

twice { puts "hello world" }

# or with the do .. end syntax
twice do
  puts "Hello World"
end

# or with explicit parenthesis
twice() { puts "hello world" }
