# == Schema Information
#
# Table name: fonds_creations
#
#  id               :integer          not null, primary key
#  fonds_creator_id :integer
#  fonds_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class FondsCreation < ActiveRecord::Base
  audited

  belongs_to :fonds
  belongs_to :fonds_creator
end
