# == Schema Information
#
# Table name: restaurants
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Restaurant < ApplicationRecord
    
    validates :name, presence: true

    validates :name, uniqueness: {
    message: "should be unique"
    }    
    has_many :bookmarks, :dependent => :destroy
    has_many :comments, :dependent => :destroy

end
