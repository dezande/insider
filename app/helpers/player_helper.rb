module PlayerHelper
  def player_log_in(player)
    session[:player_id] = player.id
  end

  def current_player
    if session[:player_id]
      @current_player ||= Player.find(session[:player_id])
    end
  end

  def player_logged_in?
    !current_player.nil?
  end

  def player_log_out
    session.delete(:player_id)
    @current_player = nil
  end

  def current_player?(player)
    player == current_player
  end

  def player_redirect_back_or(default)
    redirect = session[:forwarding_url] || default
    session.delete(:forwarding_url)
    redirect
  end

  def player_store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end