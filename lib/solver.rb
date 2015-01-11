require 'pry'
require_relative 'board'

class Solver

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
        game_row.push(0) until game_row.length == 9
        game_row.each_with_index do |number_string, index|
          game_row[index] = number_string.to_i
        end
         @board.grid << game_row
      end
  end

  def solve
    self.load_file
    board.spot_maker

    until status == :solved

      if board.spots_filled?
        puts "Board is complete!"
        lines = @board.grid.map { |row| row.join }
        puts lines.join("\n")
        @status = :solved
      else
        board.grid.each do |row|
          row.each do |entry|
            if !entry.is_a?(Integer)
              board.chunk_check(entry)
            end
          end
        end
      end
    end
  end
end

solver = Solver.new
solver.solve
