require_relative '../lib/row'
require 'minitest/autorun'
require 'minitest/pride'

class RowTest < Minitest::Test
  def test_it_exists
    input = '123 56789'
    row = Row.new(input)
    assert row
  end

  # def test_it_takes_row_as_input
  #   skip
  # end

  def test_row_has_nine_spots
    input = '123 56789'
    row = Row.new(input)
    assert_equal 9, row.possibilities.length
  end

  def test_row_spots_are_integers
    input = '123 56789'
    row = Row.new(input)
    assert row.input.first.is_a?(Integer)
  end

  def test_possibility_in_poss_array_are_integers
    input = '123 56789'
    row = Row.new(input)
    assert row.possibilities.last.is_a?(Integer)
  end

  def test_possibilities_array_exists
    input = '123 56789'
    row = Row.new(input)
    assert row.possibilities
  end

  def test_possibilities_array_has_nine_numbers
    input = '123 56789'
    row = Row.new(input)
    assert_equal 9, row.possibilities.length
  end

  def test_it_reduces_all_possibilities
    input = '123 56789'
    row = Row.new(input)
    row.reduce_possibility
    assert_equal 1, row.possibilities.length
  end

  def test_it_solves_row_missing_one_spot
    skip
    input = '123 56789'
    row = Row.new(input)
    assert_equal 9, row.possibilities.len
  end

end
