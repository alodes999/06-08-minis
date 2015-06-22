require 'active_support'
require 'active_support/core_ext/array/conversions.rb'

puts "Type out a list of things, separated by commas."
list = gets.chomp

list_group = list.split(", ")

puts list_group.to_sentence