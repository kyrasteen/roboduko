require_relative '../lib/spot'
require 'minitest/autorun'
require 'minitest/pride'

class SpotTest < Minitest::Test

  def test_it_exists
    coordinates = [0,0]
    square = 1
    spot = Spot.new(coordinates, square)
    assert spot
  end

  def test_it_has_coordinates
    coordinates = [0,0]
    square = 1
    spot = Spot.new(coordinates, square)
    assert spot.coordinates
  end

  def test_it_has_a_square
    coordinates = [0,0]
    square = 1
    spot = Spot.new(coordinates, square)
    assert spot.square
  end

end
