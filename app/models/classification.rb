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

  has_many :records
  has_many :filings
  belongs_to :classification_system

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable

end
