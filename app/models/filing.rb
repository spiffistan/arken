# == Schema Information
#
# Table name: filings
#
#  id                           :integer          not null, primary key
#  object_type                  :string
#  ancestry                     :string
#  classification_id            :integer          not null
#  series_id                    :integer          not null
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

# NOTE: This corresponds to the concept 'Basic file' in Noark 5 (v3.1)

class Filing < ActiveRecord::Base

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable
  include Remarkable

  audited

  has_ancestry

  belongs_to :classification
  belongs_to :series

  has_many :records

  validates :series, :classification, presence: true

end
