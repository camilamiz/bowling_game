class AddGameIdToFrame < ActiveRecord::Migration[6.0]
  def change
    add_reference :frames, :game, foreign_key: true
  end
end
