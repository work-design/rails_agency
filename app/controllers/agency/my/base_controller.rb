class Agency::My::BaseController < MyController

  def current_agent
    current_member
  end

end
