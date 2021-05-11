class Offer < ApplicationRecord
  belong_to :colocation
  belong_to :user
end
