# ParagraphTruncator
# Takes a long string (i.e. a paragraph) and truncates it to X characters and sticks a ... at the end.
# Should be able to take an argument to define X and also define an alternative set of characters for the ... (e.g. "Read More")

class ParagraphTruncator
  # Our initialize method for ParagraphTruncator.  It has 3 arguments, 2 of which are set by default.
  # string_to_truncate is the words or paragraph we are going to truncate.  length_of_trunc_text is
  # an integer amount for how long of a string we want to have.  alternate_trunc is the string that
  # we are passing as the truncation message.
  #
  # We have 3 attributes:
  # => @string_to_truncate, the string passed as a parameter into the string_to_truncate argument
  # => @length_of_trunc_text, an integer value of how long we want our text to be.  defaults to 25 characters
  # => @alternate_trunc, a string we are passing as our truncator message.  defaults to "..."
  def initialize(string_to_truncate, length_of_trunc_text = 25, alternate_trunc = "...")
    @string_to_truncate = string_to_truncate
    @length_of_trunc_text = length_of_trunc_text
    @alternate_trunc = alternate_trunc
  end
  # Our truncation method.  Takes a string and slices the first number of characters defined in length_of_trunc_text.
  # Will then add that string and concatenate the alternate_trunc string onto it
  #
  # Accepts no arguments, as all of the data is present in our attributes
  #
  # Returns the new truncated string
  def truncate
    newstring = @string_to_truncate.slice!(0..@length_of_trunc_text)
    newstring = newstring + @alternate_trunc
  end
end
