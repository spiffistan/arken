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

FactoryGirl.define do
  factory :preservation_and_disposal do
    # NOOP
  end
end
