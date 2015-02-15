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

FactoryGirl.define do
  factory :series do
    fonds
    classification_system
  end
end
