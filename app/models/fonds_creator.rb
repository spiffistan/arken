# == Schema Information
#
# Table name: fonds_creators
#
#  id          :integer          not null, primary key
#  uuid        :uuid
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FondsCreator < ActiveRecord::Base
  audited

  has_many :fonds_creations
  has_many :fonds, through: :fonds_creations
end
