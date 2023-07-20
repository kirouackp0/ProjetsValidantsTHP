require 'spec helper'
require_relative '../lib/game.rb'


RSpec.describe "Board Class" do
  let(:board) { Board.new }

  describe "#initialize" do
    it "creates a new board" do
      expect(board.cells).to eq(Array.new(3) { Array.new(3) { nil } }) # Or whatever your initial board state is
    end
  end

  describe "#update_board_cell" do
    # These test cases would likely require some setup to mock user input
    it "prompts the user to input cell" do
      # Implement as needed
    end

    it "checks if cell exists" do
      # Implement as needed
    end

    it "checks if cell is empty" do
      # Implement as needed
    end

    context "if cell exists and is empty" do
      it "updates cell value to player symbol" do
        # Implement as needed
      end
    end

    context "if cell does not exist or is not empty" do
      it "prompts user to try again" do
        # Implement as needed
      end
    end
  end

  describe "#check_win?" do
    it "returns true if there is 3 in a row" do
      # Implement as needed
    end
  end

  describe "#full?" do
    it "returns true if all cells are full" do
      # Implement as needed
    end
  end
end