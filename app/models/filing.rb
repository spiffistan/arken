# == Schema Information
#
# Table name: filings
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  object_type                  :string
#  ancestry                     :string
#  classification_id            :integer          not null
#  series_id                    :integer          not null
#  identifier                   :string
#  title                        :string
#  official_title               :string
#  description                  :text
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

# NOTE: This corresponds to the concept 'Basic file' in Noark 5 (v3.1)

class Filing < ActiveRecord::Base
  
  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable
  include Remarkable

  audited

  has_ancestry

  belongs_to :classification
  belongs_to :series

  has_many :records

  validates :series, :classification, presence: true
  validate :validate_unable_to_add_to_non_leaf_classification
  validate :validate_unable_to_add_to_finalized_parent

  def validate_unable_to_add_to_non_leaf_classification
    return unless classification.try(:has_children?)
    errors.add(:base, 'Unable to add filing to non-leaf classification')
  end

  def validate_unable_to_add_to_finalized_parent
    return unless series.try(:finalized?) || classification.try(:finalized?)
    errors.add(:base, 'Unable to add filing to finalized parent')
  end
end
