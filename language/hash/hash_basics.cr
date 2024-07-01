# # Explore the basics of hashes in crystal

# create a hash with char key and int value
counts = Hash(Char, Int32).new

# a test dna sequence
seq = "ACGTACGTACGTACGT"

# Loop through the sequence and count the number of times each character appears
seq.each_char do |char|
  counts[char] = counts.fetch(char, 0) + 1
end

# print the counts
counts.each do |key, value|
  puts "#{key} => #{value}"
end
