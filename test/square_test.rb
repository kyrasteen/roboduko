require_relative '../lib/square'
require 'minitest/autorun'
require 'minitest/pride'

class SquareTest < Minitest::Test

  def setup
    @square = Square.new
  end

  def test_it_finds_a_square
    square = Square.new
    coordinate = [2,7]
    assert 3, square.square_finder(coordinate)
  end

  def test_it_selects_column
    row_set = [[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9],[1,2,3,4,5,6,7,8,9]]
    assert_equal [1,2,3,1,2,3,1,2,3], @square.columns_selector(1, row_set)
  end

  
end
