# WordConnector
# Takes ["Blue", "Red", "Green"]; returns "Blue, Red, and Green".
# Takes ["Blue", "Red"]; returns "Blue and Red".

class WordConnector
  
  def initialize(array_to_split)
    @array_to_split = array_to_split
  end
  
  def last_word
    @lastword = @array_to_split.pop
  end
  
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