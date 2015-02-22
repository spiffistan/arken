# == Schema Information
#
# Table name: fonds
#
#  id              :integer          not null, primary key
#  ancestry        :string
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do

  factory :fonds do
    fonds_creators { |f| [f.association(:fonds_creator)] }

    trait :finalized do
      finalized_at { DateTime.now }
      finalized_by factory: :user
    end
  end

end
