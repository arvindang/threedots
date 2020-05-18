class GamesController < ApplicationController
  def index
    render :index
  end

  def create
    # we gonna do the following
    # 1 create a game
    # 1.5 generate random url parameter
    # 2 create a player, based on the form parameters
    # 3 redirect to the game page /:imabigoldurl

    gameurl = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    game = Game.create(gameurl: gameurl)

    # todocreate random string here
    host = Player.create(name: params["player"]["name"], turn: 0, game: game)

    redirect_to :action => "show", :id => game.gameurl
  end

  def show
    # puts params[:id]
    # gameurl.host
    # 1 get the game that has the same gameurl that we're getting in the params[:id]
    # 2 get the host, as defined by that game
    # 3 send that to the show, using the instance varsss

    # ???
    @game = Game.find_by(gameurl: params[:id])
    @host = Player.find_by(game_id: @game.id)
    # puts @host.name

    render :show
  end
end
