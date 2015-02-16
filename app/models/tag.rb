# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  text       :string
#  created_at :datetime
#  updated_at :datetime
#

class Tag < ActiveRecord::Base
  
  has_many :taggings

end
