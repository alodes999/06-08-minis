require 'minitest/autorun'
require_relative 'paragraph_truncator'

class ParagraphTruncatorTest < Minitest::Test
  
  def setup
    @tester = ParagraphTruncator.new("I'm the mightiest mage in the menagerie", 15)
  end
  
  def test_initialize
    string_to_test = "I'm the mightiest mage in the menagerie"
    assert_equal(string_to_test, @tester.string_to_truncate)
    assert_equal(15, @tester.length_of_trunc_text)
    assert_equal("...", @tester.alternate_trunc)
  end
  
  def test_truncate
    final_result = "I'm the mighties..."
    assert_equal(final_result, @tester.truncate)
  end
end