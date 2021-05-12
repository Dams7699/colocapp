class Colocation < ApplicationRecord
  has_one_attached :photos

  has_many :colocation_goals
  has_many :offers
end
