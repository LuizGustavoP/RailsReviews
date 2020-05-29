class GamesController < ApplicationController
  def create
    @game = Game.new( 
    params.require(:game).permit(:nome, :dev))
    # salva
    @game.save
    # mostra
    redirect_to @game
  end
  def show
    @game = Game.find(params[:id])
  end
end
