require_relative '../lib/gridify'
require 'minitest/autorun'
require 'minitest/pride'

class GridifyTest < Minitest::Test

  def test_it_turns_input_into_arrays_and_rows
    input = '12 34 67 9'
    grid = Gridify.new(input)
    assert grid.set.is_a?(Array)
  end

  def test_it_has_nine_spots_in_inner_array
    input = '1234 67 9'
    grid = Gridify.new(input)
    grid.set
    assert_equal 9, input.length
  end

end
