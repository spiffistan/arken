# == Schema Information
#
# Table name: fonds_creators
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FondsCreator < ActiveRecord::Base

  audited

  has_and_belongs_to_many :fonds

end
