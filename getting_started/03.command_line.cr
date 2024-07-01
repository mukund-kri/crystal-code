# Demo the opt parser with crystal

require "option_parser"

OptionParser.parse do |parser|
  parser.banner = "Welcome to the Beatles App"

  parser.on "-v", "--version", "Show Version" do
    puts "Version 1.0"
    exit
  end

  parser.on "-h", "--help", "Show Help" do
    puts parser
    exit
  end
end
