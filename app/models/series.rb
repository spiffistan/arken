# == Schema Information
#
# Table name: series
#
#  id                           :integer          not null, primary key
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
#  created_at                   :datetime
#  updated_at                   :datetime
#

class Series < ActiveRecord::Base

  audited

  belongs_to :fonds
  belongs_to :classification_system

  belongs_to :precursor, class_name: 'Series'
  belongs_to :successor, class_name: 'Series'

  has_many :records
  has_many :filings

  include Screenable
  include PreservableAndDisposable
  include Finalizable

  validates :fonds, presence: true

end
