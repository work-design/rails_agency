module RailsAgency::User
  extend ActiveSupport::Concern

  included do
    has_many :agencies, foreign_key: :agent_id, dependent: :delete_all
    has_many :clients, through: :agencies

    has_many :agent_maintains, class_name: 'Maintain', foreign_key: :agent_id, inverse_of: :agent
  end

end
