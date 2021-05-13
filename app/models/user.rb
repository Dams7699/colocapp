class User < ApplicationRecord
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_goals
  # pour table de jointure
  has_many :goals, through: :user_goals
  has_many :user_personalities
  has_many :offers

  accepts_nested_attributes_for :user_goals
end
