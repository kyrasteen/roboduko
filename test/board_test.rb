require_relative '../lib/board'
require 'minitest/autorun'
require 'minitest/pride'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new
  end

  def test_it_exists
    board = Board.new
    assert board
  end

  def test_it_has_an_empty_grid
    board = Board.new
    assert_equal [], board.grid
  end

  def test_it_inserts_one_spot_object_into_empty_space
    board = Board.new
    board.grid = [[1,0,3,7,4,9,5,8],[9,8,7,6,5,4,3,2,1]]
    assert_equal [[1, '#<Spot:0xXXXXXX @coordinates=[0, 1], @square=1>',3,7,4,9,5,8],[9,8,7,6,5,4,3,2,1]], board.spot_maker
  end
###why does this only pass when tested twice?
  def test_it_inserts_spot_objects_into_empty_spaces
    board = Board.new
    board.grid = [[1,0,3,7,4,9,5,8],[9,8,7,6,0,4,3,2,1]]
    assert_equal [[1, '#<Spot:0xXXXXXX @coordinates=[0, 1], @square=1>',3,7,4,9,5,8],[9,8,7,6,'#<Spot:0xXXXXXX @coordinates=[1, 4], @square=2>',4,3,2,1]], board.spot_maker
  end

  def test_it_makes_a_square
    @board.grid = [[1,2,3,7,4,9,5,8,6],[9,8,7,6,5,4,3,2,1],[9,8,7,6,5,4,3,2,1]]
    assert_equal [1,2,3,9,8,7,9,8,7], @board.square_maker(1)
  end

  def test_it_makes_a_column
    @board.grid = [[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6],[1,2,3,7,4,9,5,8,6]]
    assert_equal [7,7,7,7,7,7,7,7,7], @board.column_maker(3)
  end

  def test_are_spots_filled?
    @board.grid = [[1,2,3,7,4,9,5,8,6],[9,8,7,6,5,4,3,2,1],[9,8,7,6,5,4,3,2,1]]
    assert @board.spots_filled?
  end

  def test_spots_are_not_filled?
    @board.grid = [[1, '#<Spot:0xXXXXXX @coordinates=[0, 1], @square=1>',3,7,4,9,5,8],[9,8,7,6,5,4,3,2,1]]
    refute @board.spots_filled?
  end


end
