# == Schema Information
#
# Table name: document_descriptions
#
#  id                           :integer          not null, primary key
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

require 'test_helper'

class DocumentDescriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
