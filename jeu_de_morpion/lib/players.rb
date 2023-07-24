class Player
    attr_accessor :name, :player_marker
    
    def initialize(name, player_marker)
        @name = name
        @player_marker = player_marker
    end
=begin
    def select_position(board, row, column)
    position = board[row][column]
    board[row][column] = "x"
    puts "#{name} selected square #{position}"
    end
=end
end

