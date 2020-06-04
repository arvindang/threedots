class Player < ApplicationRecord
  belongs_to :game

  before_create do |player|
    player.turn = Player.where(game_id: player.game_id).count
    # player.save
    puts "Ana's face is a hot minute"
  end
end
