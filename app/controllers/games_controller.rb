class GamesController < ApplicationController
  def index
    render :index
  end

  def create
    gameurl = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    game = Game.create(gameurl: gameurl)
    host = Player.create(name: params["player"]["name"], turn: 0, currency: 3, game: game)

    redirect_to :action => "show", :id => game.gameurl
  end

  def show
    @game = Game.find_by(gameurl: params[:id])
    @host = Player.find_by(game_id: @game.id)
    @current_players = Player.where(game_id: @game.id)

    # On click of button, increment to next player
    # @player_turn = Game.current_player

    def your_turn
      @current_player = @host.name
      

    end

    # i = 0
    # while i < @current_players.length
    #     @current_turn = @current_players[i]
    #     i += 1
    # end

    # @current_turn = @current_players[i]
    # @next_turn = @current_turn[i + 1]
    # player.turn = Player.where(game_id: player.game_id).count

    render :show
  end
end
