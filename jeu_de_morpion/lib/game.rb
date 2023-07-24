require_relative 'boardcase'
require_relative 'players'
require_relative 'board'
require 'pry'

class Game
    attr_accessor :current_player, :status, :board, :players_array
    
    def initialize
        player1 = Player.new("Bonnie", "X")
        player2 = Player.new("Clyde", "O")
        
        @players_array = [player1, player2]
        @board = Board.new
        @status = "ongoing"
        @current_player = @players_array[0]
    end
    
    def turn
        # Ask the current player for their move
        puts "#{current_player.name}, it's your turn!"
        current_player.select_position(board.board_cells)
        
        # Check if a player has won
        if board.victory?
            
            @status = current_player
        end
        
        # Switch to the next player if the game is not over
        switch_player
    end
    
    # Other methods...
    
    def switch_player
        @current_player = players_array.find { |player| player != current_player }
    end
end

class Show
    def display_board(board)
        board.board_cells.each do |_, board_cell|
            print " #{board_cell.value} " # Access the 'value' attribute of 'board_cell'
            print "|" if [3, 6].include?(board_cell.cell_id)
            puts if [3, 6].include?(board_cell.cell_id)
            puts "-----------" if board_cell.cell_id == 3 || board_cell.cell_id == 6
        end
    end
end
binding.pry


#board_case_instance = BoardCase.new
#board_instace = Board.new

#display board
#board_case_instance.display_board

#get player input (select row, column)
#select_position

#player1 = Player.new("Kristin")
#player1.select_position(@board_case, 0, 1)