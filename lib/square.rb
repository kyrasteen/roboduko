class Square

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

  def columns_selector(square_number, row_set)
    square = []
    case square_number
      when 1, 4, 7 then row_set.each {|a| square << a[0..2]}
      when 2, 5, 8 then row_set.each {|a| square << a[3..5]}
      when 3, 6, 9 then row_set.each {|a| square << a[6..8]}
    end
    square.flatten
  end
end
