require 'minitest/autorun'
require_relative 'word_connector'

class WordConnectorTest < Minitest::Test
  # Define our test conditions
  def setup
    @tester = WordConnector.new(["test", "tested"])
    @tester2 = WordConnector.new(["test", "tester", "tested"])
  end
  # Tests our initialize method, that our attribute array_to_split indeed is stored as an Array
  def test_initialize
    assert_equal(["test", "tested"], @tester.array_to_split)
  end
  # Tests our last_word method, that it stores @lastword to be a String of our last word
  def test_last_word
    @tester.last_word
    assert_equal("tested", @tester.lastword)
  end
  # Tests our conversion method, that it outputs the correct String.  This test case includes
  # tests for both two part Arrays and multiple part Array's
  def test_convert
    assert_equal("test and tested", @tester.convert)
    assert_equal("test, tester, and tested", @tester2.convert)
  end
end