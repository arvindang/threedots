class PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout false

  def create
    new_player = Player.create(name: params["player_name"], game_id: params["game_id"])

    puts new_player.name
  end
end
