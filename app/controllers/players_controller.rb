class PlayersController < ApplicationController
  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      helpers.player_log_in(@player)
      redirect_to helpers.player_redirect_back_or(new_player_path)
    else
      render :new
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
