require_relative '../lib/blanks_finder'
require 'minitest/autorun'
require 'minitest/pride'

class BlanksFinderTest < Minitest::Test

  def test_finds_one_blank
    blanks = BlanksFinder.new(['1','2','3','4',' ','6','7','8','9'])
    answer = blanks.find_blanks
    assert_equal [4], answer
  end

  def test_it_finds_two_blanks
    blanks = BlanksFinder.new(['1',' ','3','4',' ','6','7','8','9'])
    answer = blanks.find_blanks
    assert_equal [1,4], answer
  end

  def test_it_finds_five_blanks
    blanks = BlanksFinder.new([' ',' ','3','4',' ',' ',' ','8','9'])
    answer = blanks.find_blanks
    assert_equal [0,1,4,5,6], answer
  end

  def test_it_turns_blank_into_spot
    skip
    blanks = BlanksFinder.new([' ',' ','3','4',' ',' ',' ','8','9'])
    answer = blanks.find_blanks
    assert_equal [0,1,4,5,6], answer
    assert_equal [' ',' ','3','4',' ',' ',' ','8','9'])
  end

end
