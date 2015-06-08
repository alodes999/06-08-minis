require_relative "paragraph_truncator"

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