### playing around with blocks in crystal

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

# Functions that consume other parameters and a block
def run_block(param1, param2, &block)
  yield param1, param2
end

# Test out run block
run_block(10, 15) do |a, b|
  c = a + b
  puts c
end

# Alternative syntax
run_block(10, 15) { |a, b| puts a * b }


## difference between do .. end and {|| ..} constructs
# - do .. end binds to the leftmost call
# - {|| ..} binds to the rightmost call

def foo(bar, &)
  yield bar 
end

bar = 10

# the do block binds to foo
foo bar do |bar|
  puts bar 
end

# is the same as
foo(bar) do |bar| 
  puts bar 
end

# On the other hand the {|| ..} form binds to bar
def foo(param)
  puts param 
end

def bar(&)
  yield
  return 20
end

# {|| ..} binds to bar
foo bar {puts 20}

## Yields can return stuff
def compute_print(&) 
  ans = yield
  puts "The result of the block is #{ans}"
end

compute_print do
  temp = 10 * 40
  temp   # The value of the last expression is returned by default
end

## BREAKS.
# Breaks can short circut later yields
def trice(&)
  puts "One"
  yield 1
  puts "Two"
  yield 2
  puts "Three"
  yield 3
end

trice do |i|
  if i == 2
    break 
  end
end

# breaks can also return values out of blocks
def print_block_value(&)
  temp = yield
  puts "The return values out of block is #{temp}"
end

puts print_block_value { break 10 + 2 }
puts print_block_value { break "hello"}

# If break gets mutiple arguments it converts it into a tuple
puts print_block_value { break 1, 2 }

# If break gets no arguments then it returns a nil value
puts print_block_value { break }