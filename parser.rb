def GetBytes(input)
  file=File.open(input)
  puts "The byte size is #{file.size} #{input}" 
  file.close
end 

def GetLines(input)
  file=File.open(input)
  puts "The total lines are #{file.readlines.size} #{input}" 
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
  puts "The total words are #{count} #{input}"
end 

def GetChars(input)
   count = 0 
  File.new(input).each_char{|c| count+= 1}
  puts "The total characters are #{count} #{input}"
end 