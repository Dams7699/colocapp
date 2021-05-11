class Goal < ApplicationRecord
  has_many :colocation_goals
  has_many :user_goals
end
