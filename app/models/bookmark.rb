# == Schema Information
#
# Table name: bookmarks
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  restaurant_id :integer
#  notes         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Bookmark < ApplicationRecord
    
    belongs_to :restaurant
    belongs_to :user

end
