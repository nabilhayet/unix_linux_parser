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
  else
    puts "Invalid input. Please try again."
  end 
  puts "Please enter your input"
  input = gets.chomp
end 