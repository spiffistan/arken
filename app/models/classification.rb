# == Schema Information
#
# Table name: classifications
#
#  id                           :integer          not null, primary key
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

class Classification < ActiveRecord::Base

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable

  audited

  has_ancestry

  belongs_to :classification_system

  has_many :records
  has_many :filings

  validates :classification_system, presence: true
  validate  :validate_absence_of_filings, if: -> { persisted? && has_children? }

  protected

  def validate_absence_of_filings
    errors.add(:base, 'Unable to add filings to non-leaf classification') unless filings.empty?
  end

end
