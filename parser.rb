def GetBytes(input)
  file=File.open(input)
  puts "The byte size is #{file.size}" 
  file.close
end 

def GetLines(input)
  file=File.open(input)
  puts "The total lines are #{file.readlines.size}" 
end 