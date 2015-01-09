
class Spot

  attr_reader :coordinates, :square
  attr_accessor :candidates

  def initialize(coordinates, square)
    @coordinates = coordinates
    @square = square
    @candidates = (1..9).to_a
  end

end
