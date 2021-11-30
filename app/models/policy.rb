class Policy < ApplicationRecord
  store_accessor :payload, :effects, :icon, :cost
end
