
class Spot

  def initialize(coordinates, square)
    @coordinates = coordinates
    @square = square
    @candidates = (1..9).to_a
  end

end
