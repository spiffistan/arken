FactoryGirl.define do
  factory :record do
    classification
    trait :finalized do
      finalized_at { DateTime.now }
      finalized_by factory: :user
    end
    trait :for_series do
      series
    end
    trait :for_filing do
      filing
    end
  end

end
