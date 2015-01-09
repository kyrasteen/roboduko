require_relative 'spot'
require_relative 'square'

class Board

  attr_accessor :grid, :square

  def initialize
    @grid = []
    @square = Square.new
  end
#need hash for coordinates instead of array
  def spot_maker
    grid.each_with_index do |row, row_index|
      row.each_with_index do |entry, column_index|
        if entry == 0
          row[column_index] = Spot.new([row_index, column_index], @square.square_finder([row_index, column_index]))
        end
      end
    end
  end

  def square_maker(square_number)
    case square_number
    when 1..3
      top_rows = grid[0..2]
      square.columns_selector(square_number, top_rows)
    when 4..6
      mid_rows = grid[3..5]
      square.columns_selector(square_number, mid_rows)
    when 7..9
      bottom_rows = grid[6..8]
      square.columns_selector(square_number, bottom_rows)
    end
  end
# try select here instead of each
  def column_maker(column_number)
    column = []
    grid.each { |row| column << row[column_number] }
    column
  end

  def evaluator(spot, chunk)
    if spot.candidates.length == 1
      spot = spot.candidates[0]
    end
    spot.candidates = spot.candidates.reject {|x| chunk.include?(x)}
  end

  def chunk_check(spot)
    self.evaluator(spot, grid[spot.coordinates[0]])
    self.evaluator(spot, column_maker(spot.coordinates[1]))
    self.evaluator(spot, square_maker(spot.square))
  end

end
