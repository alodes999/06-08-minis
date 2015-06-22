require 'active_support'
require 'active_support/core_ext/numeric/conversions.rb'

puts "Please enter a 10 digit phone number"
number = gets.chomp.to_i

puts "So, #{number.to_s(:phone, area_code: true)} is the number!"