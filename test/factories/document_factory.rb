# == Schema Information
#
# Table name: documents
#
#  id                      :integer          not null, primary key
#  uuid                    :uuid
#  documentable_id         :integer
#  documentable_type       :string
#  document_version        :string
#  document_variant        :string
#  document_format         :string
#  document_format_details :string
#  file                    :string
#  file_size               :integer
#  checksum                :string
#  checksum_algorithm      :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

FactoryGirl.define do
  factory :document do
    trait :for_record do
      association :documentable, factory: [:record, :for_series]
    end
    trait :for_document_description do
      association :documentable, factory: :document_description
    end
  end
end
