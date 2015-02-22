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

FactoryGirl.define do
  factory :meeting_filing do
    classification
    series
    trait :finalized do
      finalized_at { DateTime.now }
      finalized_by factory: :user
    end
  end

  factory :filing do
    classification
    series
    trait :finalized do
      finalized_at { DateTime.now }
      finalized_by factory: :user
    end
  end
end
