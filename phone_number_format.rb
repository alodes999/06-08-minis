# PhoneNumberFormatter
# Takes "1234567890"; returns "123-456-7890" or "(123) 456-7890".

class PhoneNumberFormatter
  # Our initialize method for PhoneNumberFormatter.  We pass a phone number as a string into the class. This string
  # is our 1 argument for this class
  # 
  # We have 1 attribute
  # => @phone_number_to_format = a string of the phone number we want to format
  def initialize(phone_number_to_format)
    @phone_number_to_format = phone_number_to_format
  end
  
end