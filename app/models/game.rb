#frozen_string_literal: true

class Game < ApplicationRecord
  has_many :frames

  def roll(pins)
    pins
  end

  def score
  end
end
