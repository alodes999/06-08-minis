require 'minitest/autorun'
require_relative 'phone_number_format'

class PhoneNumberTest < Minitest::Test
  
  def setup
    @tester = PhoneNumberFormatter.new("9999999999")
  end
  
  def test_initialize
    assert_equal(@tester.phone_number_to_format, @tester.phone_number_to_format.to_s)
    assert(@tester.phone_number_to_format.length == 10)
  end
  
  def test_parts_to_format
    @tester.get_parts_to_format
    assert(@tester.prefix.length == 3)
    assert(@tester.middle.length == 3)
    assert(@tester.end.length == 4)
  end
  
  def test_format_number
    @tester.get_parts_to_format
    assert_equal("(999) 999-9999", @tester.format_number)
  end
end