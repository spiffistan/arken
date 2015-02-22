# == Schema Information
#
# Table name: screenings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Screening < ActiveRecord::Base

  audited

  has_many :filings
  has_many :records
  has_many :series
  has_many :classifications
  has_many :document_descriptions
  
end
