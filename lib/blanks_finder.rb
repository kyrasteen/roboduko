require_relative 'spot'

class BlanksFinder

  attr_reader :input

  def initialize(input)
    #makes array of string input into array of integers
    @input = input.map { |el| el.to_i }
  end
#where there are blanks put in spot object
  def find_blanks
    blanks = []
    input.each_with_index do |num, index|
      if num == 0
        num = Spot.new
        blanks << index
      end
    end
    blanks
  end
end
