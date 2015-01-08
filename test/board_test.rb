require_relative '../lib/board'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def test_it_exists
    input = '12 34 67 9'
    board = Board.new(input)
    assert board
  end

  def test_it_has_nine_spots_in_inner_array
    input = '1234 67 9'
    board = Board.new(input)
    board.grid
    assert_equal 9, input.length
  end


end
