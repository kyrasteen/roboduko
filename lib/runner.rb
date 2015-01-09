require 'pry'
require_relative 'board'

class Runner

  attr_reader :board

  def initialize
    @board = Board.new
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
    board.create_spots
    #look for blanks and fill with spots
    until status == :solved
      #evaluate possibilites, fill spots you can
      #loop

    end
  end

end

runner = Runner.new
runner.load_file
