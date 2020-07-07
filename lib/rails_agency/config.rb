require 'active_support/configurable'

module RailsAgency #:nodoc:
  include ActiveSupport::Configurable

  configure do |config|
    config.client_types = [
      'Profile'
    ]
    config.agent_types = [
      'User', 'Member'
    ]
  end

end


