# == Schema Information
#
# Table name: remarks
#
#  id              :integer          not null, primary key
#  remarkable_type :string(255)
#  remarkable_id   :integer
#  text            :text
#  type            :integer
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Remark < ActiveRecord::Base
  belongs_to :created_by
  attr_accessible :remarkable_id, :remarkable_type, :text, :type
end
