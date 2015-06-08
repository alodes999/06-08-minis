require_relative "word_connector"

test = ["blue", "red", "green", "orange", "purple"]
test2 = ["right", "left"]

word = WordConnector.new(test)
word.convert
puts
word2 = WordConnector.new(test2)
word2.convert