# == Schema Information
#
# Table name: classification_systems
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime
#  updated_at      :datetime
#

FactoryGirl.define do
  factory :classification_system do
  end
end
