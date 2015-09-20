# == Schema Information
#
# Table name: remarks
#
#  id              :integer          not null, primary key
#  uuid            :uuid
#  remarkable_type :string
#  remarkable_id   :integer
#  text            :text
#  type            :integer
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Remark < ActiveRecord::Base
  audited

  belongs_to :remarkable, polymorphic: true
  belongs_to :created_by, class_name: 'User'
end
