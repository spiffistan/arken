# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ActiveRecord::Base
  has_many :taggings
end
