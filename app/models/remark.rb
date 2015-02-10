# == Schema Information
#
# Table name: remarks
#
#  id              :integer          not null, primary key
#  remarkable_type :string
#  remarkable_id   :integer
#  text            :text
#  type            :integer
#  created_by_id   :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Remark < ActiveRecord::Base
  belongs_to :remarkable, polymorphic: true
  belongs_to :created_by, class_name: 'User'
end
