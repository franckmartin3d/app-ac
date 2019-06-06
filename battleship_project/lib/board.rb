class Board

    attr_reader :size
  def initialize(n)
    
    row = n
    column = n

    @grid = Array.new (row) {Array.new(column, :N)} 
    @size = row * column
  end

  def [](position)

    # unpacking array
    row, col = position
    @grid[row][col]

  end

  def []=(position,val)
  # unpacking array
  row, col = position
  @grid[row][col] = val
  end

  def num_ships

    #iterate over the 2d grid 
    number = 0
    arr = @grid.flatten
    arr.each do |ele|
      if ele == :S
        number +=1
      end
    end
    return number


    # Nice method
   # @grid.flatten.count {|ele| ele == :s} 
  end

    


end
