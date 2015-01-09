require 'pry'
require_relative 'board'

class Runner

  attr_reader :board, :status

  def initialize
    @board = Board.new
    @status = :unsolved
  end

#upon loading immediatly sets up grid (arrays)
  def load_file
    filename = ARGV.first
      File.readlines(filename).each do |line|
        game_row = line.delete("\n").split("")
        game_row.each_with_index do |number_string, index|
          game_row[index] = number_string.to_i
        end
         @board.grid << game_row
      end
  end

  def run
    self.load_file
    board.spot_maker
    #look for blanks and fill with spots

    until status == :solved
      #go through entire grid
      #find spots
      #evaluate possibilites, fill spots you can
      #loop
      puts 'in run loop'
      spots_present = board.grid.select do |row|
        row.select do |num|
          num.is_a?(Spot)
        end
      end

      if spots_present.length == 0
        status = :solved
      else
        board.grid.each do |row|
          row.each do |num|
            if num.is_a?(Spot)
              board.chunk_check(spot)
            end
          end
        end
      end
    end
  end

end

runner = Runner.new
runner.run
