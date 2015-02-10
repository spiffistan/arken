# == Schema Information
#
# Table name: document_links
#
#  id                      :integer          not null, primary key
#  document_description_id :integer
#  record_id               :integer
#  role                    :integer
#  linked_at               :datetime
#  linked_by_id            :integer
#  created_at              :datetime
#  updated_at              :datetime
#

require 'test_helper'

class DocumentLinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
