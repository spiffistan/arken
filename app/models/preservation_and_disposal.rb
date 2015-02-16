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

# This class holds a decision for the preservation and disposal of records.
#
# Also known as:
#  · Norwegian Noark 5 (v3.1): Bevaring og kassasjon
#  · MoReq2: Retention & Disposition Schedule

class PreservationAndDisposal < ActiveRecord::Base

  audited

  has_many :filings
  has_many :records
  has_many :series
  has_many :classifications
  has_many :document_descriptions

end
