class Colocation < ApplicationRecord
  has_many_attached :photos

  belongs_to :user

  has_many :colocation_goals
  has_many :offers
end
