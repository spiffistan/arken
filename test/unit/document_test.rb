# == Schema Information
#
# Table name: document_objects
#
#  id                      :integer          not null, primary key
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

require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
