class PlayersController < ApplicationController
  def index
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      render :index
    else
      render :index
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
