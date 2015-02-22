# == Schema Information
#
# Table name: document_objects
#
#  id                 :integer          not null, primary key
#  documentable_id    :integer
#  documentable_type  :string
#  version            :integer
#  variant_format     :string
#  format             :string
#  format_details     :string
#  checksum           :string
#  checksum_algorithm :string
#  file_size          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class DocumentObjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
