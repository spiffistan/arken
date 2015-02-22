# == Schema Information
#
# Table name: records
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  object_type                  :string
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
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class RecordEntry < BasicRecord

end
