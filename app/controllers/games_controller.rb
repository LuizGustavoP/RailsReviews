class GamesController < ApplicationController
  def index
    @games = Game.all
    @games = Game.search(params[:search])
  end

  def create
   @game = Game.new(
        params.require(:game).permit(:nome, :dev, :pub, :platform, :search))
   # salva
   @game.save
   # mostra
   redirect_to @game
  end

  def search
   if params[:busca].present?
     @games = Game.search(params[:busca])
   else
     @games = Game.all
   end
  end

  def show
    @game = Game.find(params[:id])
  end

  def destroy
   @game = Game.find(params[:id])
   @game.destroy
   redirect to '/games'
  end
end
