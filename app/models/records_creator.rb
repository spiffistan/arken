# == Schema Information
#
# Table name: records_creators
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class RecordsCreator < ActiveRecord::Base
  has_and_belongs_to_many :fonds
end
