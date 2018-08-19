class Comment < ApplicationRecord
  validates :user_id, :presence => true
  validates :restaurant_id, :presence => true
  validates :body, :presence => true

    belongs_to :restaurant
    belongs_to :user
end