# WordConnector
# Takes ["Blue", "Red", "Green"]; returns "Blue, Red, and Green".
# Takes ["Blue", "Red"]; returns "Blue and Red".

class WordConnector
  attr_reader :lastword, :array_to_split
  # Our initialize method.  Has 1 argument, array_to_split that the program will split.
  #
  # Our objects will have one attribute initialized, and another set later in the program.  The
  # initialized attribute:
  # => @array_to_split:  the array passed into the object when instantiated.  
  def initialize(array_to_split)
    @array_to_split = array_to_split
  end
  # This method removes the last word of the array, setting our other attribute, and allowing us to add an "and"
  # later on when splitting the array down.
  #
  # This method accepts no arguments
  #
  # This method returns the last element of the array @array_to_split, as a string.
  def last_word
    @lastword = @array_to_split.pop
  end
  # This method converts the array elements to a string, or connects it as the problem
  # wishes.  
  # This method accepts no arguments, relying on our already set attributes.  The outcome of the conditional
  # sets which combine method is called
  #
  # This method returns our connected string of words from the initial array.
  def convert
    last_word
    
    if @array_to_split.length == 1
      print_two_words
    else
      print_multiple_words
    end
  end
  # This method converts two word arrays to the desired format.
  #
  # This takes no arguments.
  #
  # This returns the combined String with two parts
  def print_two_words
    "#{@array_to_split[0]} and #{@lastword}"
  end
  # This method converts multiple word arrays to the desired format.
  #
  # This takes no arguments.
  #
  # This returns the combined String in the proper format with multiple parts.
  def print_multiple_words
    text = @array_to_split.join(", ")
    text += ", and #{@lastword}"
    return text
  end
end