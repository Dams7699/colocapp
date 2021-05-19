class Colocation < ApplicationRecord
  has_many_attached :photos

  belongs_to :user

  has_many :colocation_goals
  has_many :goals, through: :colocation_goals

  
  
  has_many :offers
  
  has_many :accepted_offers, -> { where(status: "Accepté!") }, class_name: "Offer"
  has_many :users, through: :accepted_offers
  
  has_many :user_personalities
  has_many :personalities, through: :user_personalities
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
