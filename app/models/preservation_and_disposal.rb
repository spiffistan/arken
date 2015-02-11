# == Schema Information
#
# Table name: preservation_and_disposals
#
#  id                 :integer          not null, primary key
#  disposal_decision  :text
#  disposal_authority :text
#  preservation_time  :integer
#  disposed_of_by_id  :integer
#  disposed_of_at     :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

class PreservationAndDisposal < ActiveRecord::Base
  has_many :filings
  has_many :records
  has_many :series
  has_many :classifications
  has_many :document_descriptions
end
