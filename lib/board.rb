require_relative 'spot'

class Board

  attr_accessor :grid

  def initialize
    @grid = []
  end

  def create_spots
    grid.each_with_index do |row, row_index|
      row.each_with_index do |entry, column_index|
        if entry == 0
          row[column_index] = Spot.new([row_index, column_index], self.square_finder([row_index, column_index]))
        end
      end
    end
  end
#can I make this take a hash instead of array?
  def square_finder(coordinate)
    case coordinate[0]
    when 0..2
      case coordinate[1]
      when 0..2 then 1
      when 3..5 then 2
      when 6..8 then 3
      end
    when 3..5
      case coordinate[1]
      when 0..2 then 4
      when 3..5 then 5
      when 6..8 then 6
      end
    when 6..8
      case coordinate[1]
      when 0..2 then 7
      when 3..5 then 8
      when 6..8 then 9
      end
    end
  end



end
