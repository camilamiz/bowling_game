class Frame < ApplicationRecord
  belongs_to :game
  # has_many :rolls

  validate :game_has_ten_frames_maximum

  # def score
  # end

  private

  def game_has_ten_frames_maximum
    errors.add(:base, :game_cannot_have_more_than_ten_frames) if Frame.where(game_id: game_id).count > 10
  end
end
