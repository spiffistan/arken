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
#  created_at                   :datetime
#  updated_at                   :datetime
#

# This corresponds to 'Class' in Noark 5 (v3.1)

class Classification < ActiveRecord::Base

  has_ancestry
  audited

  belongs_to :classification_system

  has_many :records
  has_many :filings

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable

  validate :validate_absence_of_files, if: -> { persisted? && has_children? }

  protected

  def validate_absence_of_files
    errors.add(:base, 'Unable to add files to non-leaf classification') unless filings.empty?
  end

end
