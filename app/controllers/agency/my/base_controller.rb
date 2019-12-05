class Agency::My::BaseController < RailsAgency.config.my_controller.constantize

  def current_agent
    current_member
  end
  
end
