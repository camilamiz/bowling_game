require 'rails_helper'

RSpec.describe Frame, type: :model do
  subject { Frame.create(game_id: game.id) }
  let(:game) { Game.create }

  describe 'Validations' do
    it 'game has 10 frames maximum' do
      10.times { subject }
      frame = subject.create(game_id: game.id)

      expect(frame.save.errors.details[:base]).to include(a_hash_including(error: :game_cannot_have_more_than_ten_frames))
    end
  end
end
