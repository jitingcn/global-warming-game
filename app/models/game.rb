class Game < ApplicationRecord
  store_accessor :payload, :status, :event, :current_year, :faction
end
