# App.rb
#
# 
require_relative "paragraph_truncator"
require_relative "phone_number_format"
require_relative "word_connector"


choice_list = %w(pt pnf wc)
puts "Which application would you like to use?"
puts "Please enter pt for paragraph truncator,"
puts "Please enter pnf for phone number formatter,"
puts "Please enter wc for word connector"
choice = gets.chomp

while choice_list.include?(choice) == false
  puts "I didn't understand that answer, please try again."
  choice = gets.chomp
end

if choice.downcase == "pt"
  puts "Please enter a paragraph to truncate!"
  text = gets.chomp
  
  puts "Is there a desired length to truncate to?"
  choice = gets.chomp.to_i
  if choice == 0
    puts "Ok, we'll use a default of 25 characters"
    choice = 25
  else
    puts "Ok, we'll truncate after #{choice} characters"
  end
  
  puts "Is there a way you'd like the truncator to show up?"
  trunc = gets.chomp
  if trunc == ""
    puts "Ok, we'll use the default of '...'"
    trunc = "..."
  else
    puts "Ok, we'll truncate using the #{trunc} message."
  end
  
  trun1 = ParagraphTruncator.new(text, choice, trunc)
  puts "Our truncated message is:"
  puts trun1.truncate
  
elsif choice.downcase == "pnf"
  
  
  
  
  
elsif choice.downcase == "wc"
  
else
end