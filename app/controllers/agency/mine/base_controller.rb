class Agency::Mine::BaseController < MineController

  def current_agent
    current_user
  end

end
