class Hobby < ApplicationRecord
  has_many :user_hobbies

  def full_name
    "<span class='icon'>#{icon}</span> #{name.capitalize}".html_safe
  end
end
