require 'rspec'
require_relative 'bowling'

describe 'Bowling game logic' do
  subject(:game) { Bowling.new }

  it 'can roll gutter game' do
    game.roll_many(20, 0)

    expect(game.score).to eq 0
  end

  it 'rolls all ones' do
    game.roll_many(20, 1)

    expect(game.score).to eq 20
  end

  it 'scores a spare' do
    game.roll(5)
    game.roll(5)
    game.roll(3)
    game.roll_many(17, 0)

    expect(game.score).to eq 16
  end
end
