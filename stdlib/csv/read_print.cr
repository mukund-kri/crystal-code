require "csv"

# Open file for reading
File.open "Delhi.min.csv" do |infile|
  # Parse the csv
  reader = CSV.new infile, header = true

  # Loop over the csv and print each line
  while reader.next
    puts reader.row
  end
end
