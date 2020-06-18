class PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout false

  def create
    player_name = params["player_name"]
    game_id = params["game_id"]
    puts player_name

    new_player = Player.create(name: player_name, game_id: game_id, currency: 3)
    # TODO add the respond value
  end
end
