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
  
  
end