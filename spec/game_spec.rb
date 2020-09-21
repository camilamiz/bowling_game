require 'rails_helper'

RSpec.describe Game, type: :model do
  subject { Game.new }

  it 'has 10 frames' do
    expect(subject.frames).to eq 10
  end

  describe '#roll' do
    it 'receives the number of knocked down pins' do
      expect(subject.roll(7)).to eq 7
    end
  end

  describe '#score' do
  end
end
