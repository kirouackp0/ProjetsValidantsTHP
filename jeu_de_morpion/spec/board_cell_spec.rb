require 'spec helper'
require_relative ''




=begin
RSpec.describe "Game Class" do
  subject(:game) { Game.new }

  it "has variable current player" do
    expect(game).to respond_to(:current_player)
  end

  describe "#initialize" do
    # This might require additional setup to check properly
    it "asks for user input for name" do
      expect(game).to receive(:get_user_input)
      game.initialize
    end

    it "displays the game board" do
      expect(game).to receive(:display_board)
      game.initialize
    end
  end

  describe "#still_ongoing?" do
    context "when there is no 3 in a row and the board is not full" do
      it "returns true" do
        allow(game).to receive(:three_in_a_row?).and_return(false)
        allow(game).to receive(:board_full?).and_return(false)

        expect(game.still_ongoing?).to be true
      end
    end
  end

  describe "#game_over" do
    context "when someone wins" do
      it "returns congratulations to the winner" do
        # Assuming you have a method #winner that returns the winning player
        allow(game).to receive(:winner).and_return("Player 1")

        expect(game.game_over).to eq("Congratulations, Player 1!")
      end
    end

    context "when there is a tie" do
      it "says it's a tie" do
        allow(game).to receive(:winner).and_return(nil)
        allow(game).to receive(:board_full?).and_return(true)

        expect(game.game_over).to eq("It's a tie!")
      end
    end

    it "offers a new game" do
      expect(game.game_over).to eq("Would you like to play a new game?")
    end
  end
end



=end
RSpec.describe "BoardCell Class" do
  let(:board_cell) { BoardCell.new }

  describe '#initialize' do
    it 'creates an empty cell' do
      expect(board_cell.value).to eq(' ')
    end
  end
  describe '#cell_empty?' do
    it 'returns true if the cell is empty' do
      expect(board_cell.empty?).to be true
    end
    it 'returns false if the cell is not empty' do
        board_cell = 'x'
      expect(board_cell.empty?).to be false
    end
  end
end