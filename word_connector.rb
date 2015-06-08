# WordConnector
# Takes ["Blue", "Red", "Green"]; returns "Blue, Red, and Green".
# Takes ["Blue", "Red"]; returns "Blue and Red".

class WordConnector
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
  # This method accepts no arguments, relying on our already set attributes
  #
  # This method returns our connected string of words from the initial array.
  def convert
    last_word
    
    if @array_to_split.length == 1
      print "#{@array_to_split[0]} and #{@lastword}"
    else
      @array_to_split.each do |a|
        print "#{a}, "
      end
      print "and #{@lastword}"
    end
  end
end