# 123 56789
#9258345
class Row

  attr_reader :input, :possibilities

  def initialize(input)
    @input = input.chars.map { |el| el.to_i }
    @possibilities = [1,2,3,4,5,6,7,8,9]
  end
  #reduce num of poss
  #take input array
  #iterate through each position of input
  #through iterating through each position of possibilities
  #if number in input is found in possiblities
  #remove number from possibilities

  # @input = input.chars.map { |el| el.to_i }
  def reduce_possibility
    input.each do |num|
      if @possibilities.include?(num)
        deleted = @possibilities.delete(num)
      end
    end
    return @possibilities
  end
end

#solve
#takes whatever number is left in possibilities array and inserts it into
#correct spot in input
#returns new completed row

#row
#row.solve
row = Row.new('123 56789')
row.reduce_possibility
