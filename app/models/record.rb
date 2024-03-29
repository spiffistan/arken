# == Schema Information
#
# Table name: records
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  object_type                  :string
#  filing_id                    :integer
#  series_id                    :integer
#  classification_id            :integer          not null
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

# This is the Noark 5 concept 'Simplified record'
class Record < ActiveRecord::Base

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Documentable
  include Remarkable

  audited

  belongs_to :filing
  belongs_to :series
  belongs_to :classification

  has_many :document_links
  has_many :document_descriptions, through: :document_links
  has_many :documents, as: :documentable

  validates :classification, presence: true
  validate :validate_series_xor_filing_present
  validate :validate_unable_to_add_to_finalized_parent

  def finalizable_parents
    [classification, filing, series].flatten.compact
  end

  private

  def validate_series_xor_filing_present
    return if series.nil? ^ filing.nil?
    errors.add(:base, 'Either series or filing must be set, and not both')
  end

  def validate_unable_to_add_to_finalized_parent
    return unless series.try(:finalized?) || filing.try(:finalized?)
    errors.add(:base, 'Unable to add record to finalized parent')
  end
end
