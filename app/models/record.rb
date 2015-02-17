# == Schema Information
#
# Table name: records
#
#  id                           :integer          not null, primary key
#  type                         :string           not null
#  filing_id                    :integer          not null
#  series_id                    :integer          not null
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
#  created_at                   :datetime
#  updated_at                   :datetime
#

class Record < ActiveRecord::Base

  audited

  belongs_to :filing
  belongs_to :series
  belongs_to :classification

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Documentable

  validates :classification, presence: true
  validate  :validate_series_xor_filing_present
  validate  :validate_unable_to_add_to_finalized_parent

  protected

  def validate_series_xor_filing_present
    if series.nil? ^ filing.nil?
      errors.add(:base, 'Either series or filing must be set, and not both')
    end
  end

  def validate_unable_to_add_to_finalized_parent
    if series.try(:finalized?) || filing.try(:finalized?)
      errors.add(:base, 'Unable to add record to finalized parent')
    end
  end

end
