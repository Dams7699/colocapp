class Colocation < ApplicationRecord
  has_many :colocation_goals
  has_many :offers
end
