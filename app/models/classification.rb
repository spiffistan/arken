# == Schema Information
#
# Table name: classifications
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  key                          :string
#  ancestry                     :string
#  classification_system_id     :integer          not null
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

# This corresponds to the concept 'Class' in Noark 5 (v3.1)
#
#   * `key` is used in flat classification systems
#   * `facet` is used in multifaceted classification systems
#   * `ancestry` is used in hierarchical classification systems
#
class Classification < ActiveRecord::Base
  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable

  audited

  has_ancestry # Used in hierarchical classification systems

  belongs_to :classification_system
  belongs_to :facet # Used in multifaceted classification systems

  has_many :records
  has_many :filings

  validates :classification_system, presence: true

  validates :ancestry, absence: true, unless: -> { classification_system.any_hierarchical? }
  validates :facet, absence: true, unless: -> { classification_system.any_multifaceted? }
  validates :key, absence: true, unless: -> { classification_system.any_flat? }
  validates :key, uniqueness: { scope: :classification_system }, if: -> { classification_system.any_flat? }

  validate :validate_non_leaf_absence_of_filings_and_records
  validate :validate_inability_to_change_classification_system

  protected

  # Non-leaf classifications should not be able to have associated filings or records
  def validate_non_leaf_absence_of_filings_and_records
    return unless persisted? && has_children?
    errors.add(:base, 'Unable to add filings to non-leaf classification') unless filings.empty? && records.empty?
  end

  def validate_inability_to_change_classification_system
    return unless persisted? && classification_system_id_changed?
    errors.add(:base, 'Classification system cannot be modified')
  end
end
