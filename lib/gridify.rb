
class Gridify
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def set
    rows = input.split('\n')
    input = rows.map do |line|
      line.chars
    end
    input
  end
end
