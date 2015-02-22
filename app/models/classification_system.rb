# == Schema Information
#
# Table name: classification_systems
#
#  id              :integer          not null, primary key
#  uuid            :uuid
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ClassificationSystem < ActiveRecord::Base

  include Finalizable

  audited

  has_many :series
  has_many :classifications

end
