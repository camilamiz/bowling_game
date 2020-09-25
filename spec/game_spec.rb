require 'rails_helper'

RSpec.describe Game, type: :model do
  subject { Game.create }

  describe '#roll' do
    it 'receives the number of knocked down pins' do
      expect(subject.roll(7)).to eq 7
    end
  end

  describe '#score' do
    it { expect(subject.score).to eq 0 }
  end
end
