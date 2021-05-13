class Goal < ApplicationRecord
  has_many :colocation_goals
  has_many :user_goals

  def full_name
    "<span class='icon'>#{icon}</span> #{name.capitalize}".html_safe
  end
end
