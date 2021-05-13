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

  accepts_nested_attributes_for :user_goals
  accepts_nested_attributes_for :user_hobbies
  accepts_nested_attributes_for :user_personalities
end
