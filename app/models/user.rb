require 'date'

class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         # pour table de jointure
  has_many :user_goals
  has_many :goals, through: :user_goals

  has_many :user_hobbies
  has_many :hobbies, through: :user_hobbies

  has_many :user_personalities
  has_many :personalities, through: :user_personalities

  has_many :offers
  has_many :colocations
  has_many :owner_offers, through: :colocations, source: :offers

  has_many :notifications, as: :recipient, dependent: :destroy
  has_noticed_notifications

  accepts_nested_attributes_for :user_goals
  accepts_nested_attributes_for :user_hobbies
  accepts_nested_attributes_for :user_personalities

  def age_in_years
    (Date.today - self.birthday).to_i / 365
  end

end
