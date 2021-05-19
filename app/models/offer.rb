class Offer < ApplicationRecord
  belongs_to :colocation
  belongs_to :user

  validates :user, uniqueness: { scope: :colocation }
end
