# == Schema Information
#
# Table name: remarks
#
#  id              :integer          not null, primary key
#  uuid            :uuid
#  remarkable_type :string
#  remarkable_id   :integer
#  text            :text
#  type            :integer
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :remark do
  end
end
