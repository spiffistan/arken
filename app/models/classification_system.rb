# == Schema Information
#
# Table name: classification_systems
#
#  id              :integer          not null, primary key
#  uuid            :uuid
#  type            :integer
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
  has_many :facets # Used in multifaceted classification systems

  enum type: %i(
    hierarchical
    flat
    multifaceted_hierarchical
    multifaceted_flat
  )

  validates :type, presence: true
  validates :facets, absence: true, unless: :any_multifaceted?

  def finalizable_parents
    []
  end

  def any_hierarchical?
    hierarchical? || multifaceted_hierarchical?
  end

  def any_multifaceted?
    multifaceted_hierarchical? || multifaceted_flat?
  end

  def any_flat?
    multifaceted_flat? || flat?
  end

end
