class Agency < ApplicationRecord
  include RailsAgency::Agency
end unless defined? Agency
