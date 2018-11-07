class Queens

  def initialize(position)
      width = 8
      height = 8
      default_value = 0

      @board = Array.new(width){Array.new(height, default_value)}

      @w_row = position.values.first[0]
      @w_column = position.values.first[1]

      @b_row = position.values.last[0]
      @b_column = position.values.last[1]

      validate_position

      @board[@w_row][@w_column] = 'W'
      @board[@b_row][@b_column] = 'B'


      @board.each {|x| p x}


  end
  
  def validate_position
    if @w_row <= 0 || @w_column <= 0
      raise ArgumentError
    end

    if @w_row >= 8 || @w_column >= 8
      raise ArgumentError
    end   
  end

  def attack?
    if @w_row == @b_row
      return true
    end

    if @w_column == @b_column
      return true
    end

    if (@w_column - @b_column).abs == (@w_row - @b_row).abs
      return true
    end

    false
  end
end