class Personality < ApplicationRecord
  has_many :user_personalities

  def full_name
    "<span class='icon'>#{icon}</span> #{name.capitalize}".html_safe
  end
end
