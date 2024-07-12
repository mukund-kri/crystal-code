Process.run "shards", args: ["build"] do |proc|
  o = proc.output

  o.each_line do |line|
    puts line
  end
end
