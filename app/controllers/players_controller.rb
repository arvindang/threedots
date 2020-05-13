class PlayersController < ActionController::Base
  skip_before_action :verify_authenticity_token

  def create
    new_player = Player.create(name: params["player_name"], game_id: params["game_id"])

    puts new_player.name

    # TODO
    #return (not render anything) player information
    # 201 created, status code
    # Hook up form to javascript, stop submit from happening, capture event (jquery)

  end
end
