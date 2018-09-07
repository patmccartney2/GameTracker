class GamesController < ApplicationController
  before_action :set_article, only: [:destroy, :edit, :update]

  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new()
  end

  def create
    @game = Game.new(game_params)
    @game.save

    redirect_to game_path(@game)
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  def edit
  end

  def update
    @game.update(game_params)

    redirect_to game_path(@game)
  end


  private

  def game_params
    params.require(:game).permit(:title, :genre, :release_year, :system)
  end

  def set_article
   @game = Game.find(params[:id])
  end

end
