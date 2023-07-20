require 'spec helper'
require_relative '../lib/app/player'

RSpec.describe "Player Class" do
  let(:player) { Player.new('Kristin', 'X') }
end

  it "assigns name and symbol when initialized" do
    expect(player.name).to eq('Kristin')
    expect(player.symbol).to eq('X')
  end
end