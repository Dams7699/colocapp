class Colocation < ApplicationRecord
  has_many_attached :photos

  belongs_to :user

  has_many :colocation_goals
  has_many :goals, through: :colocation_goals

  has_many :offers

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
