require_relative "phone_number_format"
# Test case and user input for PhoneNumberFormat
puts "Please enter a 10 digit phone number"
number = gets.chomp

form = PhoneNumberFormatter.new(number)
form.get_parts_to_format

puts "So, #{form.format_number} is the number!"