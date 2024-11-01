require './parser.rb'

puts "Please enter your input"
input = gets.chomp

while(input != 'Exit')
  if(input.match(/ccwc\s\-c\s\w*.txt/))
    text = input.split(" ").last
    if(File.exist?(text))
      GetBytes(text)
    else
      puts "File not found."
    end 
  elsif(input.match(/ccwc\s-l\s\w*.txt/))
    text = input.split(" ").last
    GetLines(text)
  elsif(input.match(/ccwc\s\-w\s\w*.txt/))
    text = input.split(" ").last
    if(File.exist?(text))
      GetWords(text)
    else
      puts "File not found."
    end 
  elsif(input.match(/wc\s-m\s\w*.txt/) || input.match(/ccwc\s-m\s\w*.txt/))
   text = input.split(" ").last
    if(File.exist?(text))
      GetChars(text)
    else
      puts "File not found."
    end
  elsif(input.match(/ccwc\s\w*.txt/))
    text = input.split(" ").last
    if(File.exist?(text))
       GetLines(text)
       GetWords(text)
       GetChars(text)
    else
      puts "File not found."
    end 
elsif(input.match(/cat\s\w*.txt/) || input.match(/ccwc\s\-l/))
  text = input.split(" ").last
  if(text.match(/\.txt$/))
    if(File.exist?(text))
      GetLines(text)
    else
     puts "File not found."
    end 
  else
    while(true)
      puts "Please type something!"
      user_input = gets.chomp
      puts "Total number of line #{user_input.lines.count}" 
      break
    end 
  end 
else
  puts "Invalid input. Please try again."
end 
  puts "Please enter your input"
  input = gets.chomp
end 