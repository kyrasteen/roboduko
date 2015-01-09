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



end
