# PhoneNumberFormatter
# Takes "1234567890"; returns "123-456-7890" or "(123) 456-7890".

class PhoneNumberFormatter
  attr_reader :phone_number_to_format, :prefix, :middle, :end
  # Our initialize method for PhoneNumberFormatter.  We pass a phone number as a string into the class. This string
  # is our 1 argument for this class
  # 
  # We have 1 attribute
  # => @phone_number_to_format = a string of the phone number we want to format
  def initialize(phone_number_to_format)
    @phone_number_to_format = phone_number_to_format
  end
  # This method splits our phone number into parts of a string we can format.
  #
  # This method accepts no arguments
  #
  # This method returns the last 4 numbers of the phone number
  def get_parts_to_format
    @prefix = @phone_number_to_format.slice!(0..2)
    @middle = @phone_number_to_format.slice!(0..2)
    @end = @phone_number_to_format
  end
  # This method gives us our formatted phone number.
  #
  # This method accepts no arguments, only using the data we have
  #
  # This method returns the formatted phone number in a string. 
  def format_number
    formatted_number = "(#{@prefix}) #{@middle}-#{@end}"
  end
end