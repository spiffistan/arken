# == Schema Information
#
# Table name: document_objects
#
#  id                 :integer          not null, primary key
#  documentable_id    :integer
#  documentable_type  :string
#  version            :string
#  variant            :string
#  format             :string
#  format_details     :string
#  checksum           :string
#  checksum_algorithm :string
#  file_size          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :document_object do
    trait :for_record do
      association :documentable, factory: :record
    end
    trait :for_document_description do
      association :documentable, factory: :document_description
    end
  end
end
