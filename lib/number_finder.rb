#needs to go through array of lines(array) and find what
#number(s) are missing

#need possibilites array to compare to.

class NumberFinder

  attr_reader :possibilities, :string, :input
  #assuming input is array of strings
  def initialize(input)
    #makes array of string input into array of integers
    @input = input.map { |el| el.to_i }
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end

  def find_missing_nums
      input.each do |num|
        if @possibilities.include?(num)
          deleted = @possibilities.delete(num)
        end
      end
  #  deleted
    @possibilities
  end



end
