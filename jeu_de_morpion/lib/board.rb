class Board 
    attr_accessor :board_cells
    
    def initialize
        @board_cells = []
        (1..9).each do |cell_id|
            @board_cells << BoardCase.new(cell_id)
        end
    end
    
    def play_turn(player)
        puts "#{player.name}, it's your turn!"
        puts "Enter the number of the cell where you want to place your marker (1-9):"
        choice = gets.chomp.to_i
        
        board_cells[choice - 1].value = player_marker
    end
    
    def victory?
        winning_combinations = [
        [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [7, 5, 3]
    ]
    
    winning_combinations.each do |combination|
        markers = combination.map { |index| board_cells[index].value }
        return true if markers.uniq.length == 1 && !markers[0].empty?
        
        return true if board_cells.all? { |board_cells| !board_cells.value.empty? } 
        false
        end
    end
end


=begin
@board = [
["| 1", "2", "3 |"],
["| 4", "5", "6 |"],
["| 7", "8", "9 |"],
]


=end