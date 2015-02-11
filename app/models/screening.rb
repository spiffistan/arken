# == Schema Information
#
# Table name: screenings
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Screening < ActiveRecord::Base
  has_many :filings
  has_many :records
  has_many :series
  has_many :classifications
  has_many :document_descriptions
end
