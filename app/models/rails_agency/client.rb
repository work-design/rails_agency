module RailsAgency::Client
  extend ActiveSupport::Concern

  included do
    has_many :agencies, dependent: :delete_all, inverse_of: :client
    has_many :agents, through: :agencies

    has_many :client_maintains, class_name: 'Maintain', foreign_key: :client_id, inverse_of: :client
  end

  def name
    id
  end


end
