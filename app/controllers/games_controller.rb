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

    render :show
  end
end
