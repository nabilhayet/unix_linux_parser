def GetBytes(input)
  file=File.open(input)
  puts "The byte size is #{file.size}" 
  file.close
end 

def GetLines(input)
  file=File.open(input)
  puts "The total lines are #{file.readlines.size}" 
end 

def GetWords(input)
  count = 0 
  File.open(input, "r") do |f|
    f.each_line do |line|
      line.split(' ').each do |word|
        count += 1
      end
    end
  end
  puts "The total words are #{count}"
end 