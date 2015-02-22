# == Schema Information
#
# Table name: document_descriptions
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  title                        :string
#  description                  :text
#  document_type                :integer          default("0")
#  document_status              :integer          default("0")
#  author_id                    :integer
#  preservation_and_disposal_id :integer
#  screening_id                 :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

FactoryGirl.define do
  factory :document_description do
    document_link
  end
end
