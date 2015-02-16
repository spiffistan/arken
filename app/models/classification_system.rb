# == Schema Information
#
# Table name: classification_systems
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class ClassificationSystem < ActiveRecord::Base

  audited

  has_many :series
  has_many :classifications

  include Finalizable

end
