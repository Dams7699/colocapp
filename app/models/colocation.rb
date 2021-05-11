class Colocation < ApplicationRecord
  has_one_attached :photo

  has_many :colocation_goals
  has_many :offers
end
