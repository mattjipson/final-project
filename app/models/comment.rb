# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  body       :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
    
  validates :user_id, :presence => true
  validates :restaurant_id, :presence => true
  validates :body, :presence => true

    belongs_to :restaurant
    belongs_to :user
    
end
