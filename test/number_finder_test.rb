require_relative '../lib/number_finder'
require 'minitest/autorun'
require 'minitest/pride'

class NumberFinderTest < Minitest::Test

  def test_it_has_array_of_possible_numbers
    nums = NumberFinder.new(['1','2','3','4',' ','6','7','8','9'])
    assert nums.possibilities
  end

  def test_it_finds_one_missing_number
    nums = NumberFinder.new(['1','2','3','4',' ','6','7','8','9'])
    answer = nums.find_missing_nums
    assert_equal [5], answer
  end

  def test_it_finds_three_missing_numbers
    nums = NumberFinder.new(['1',' ','3','4',' ','6','7',' ','9'])
    answer = nums.find_missing_nums
    assert_equal [2,5,8], answer
  end

  def 

end
