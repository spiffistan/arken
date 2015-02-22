# == Schema Information
#
# Table name: series
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  fonds_id                     :integer          not null
#  classification_system_id     :integer
#  precursor_id                 :integer
#  successor_id                 :integer
#  title                        :string
#  description                  :text
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  records_period_start_at      :datetime
#  records_period_end_at        :datetime
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class Series < ActiveRecord::Base

  include Screenable
  include PreservableAndDisposable
  include Finalizable

  audited

  belongs_to :fonds
  belongs_to :classification_system

  belongs_to :precursor, class_name: 'Series'
  belongs_to :successor, class_name: 'Series'

  has_many :records
  has_many :filings

  validates :fonds, presence: true

  validate :validate_unable_to_add_to_finalized_parent

  protected

  def validate_unable_to_add_to_finalized_parent
    if fonds.finalized?
      errors.add(:base, 'Unable to add series to finalized fonds')
    end
  end

end
