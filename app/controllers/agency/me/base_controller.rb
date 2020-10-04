class Agency::Me::BaseController < MeController

  def current_agent
    current_member
  end

end
