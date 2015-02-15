# == Schema Information
#
# Table name: fonds
#
#  id                 :integer          not null, primary key
#  ancestry           :string
#  records_creator_id :integer
#  title              :string
#  description        :text
#  finalized_by_id    :integer
#  finalized_at       :datetime
#  created_by_id      :integer
#  created_at         :datetime
#  updated_at         :datetime
#

FactoryGirl.define do

  factory :fonds do
  

  end

end
