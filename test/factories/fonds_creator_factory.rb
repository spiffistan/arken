# == Schema Information
#
# Table name: fonds_creators
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do

  factory :fonds_creator do
    name 'FC1'
    description 'FC1'
  end

end
