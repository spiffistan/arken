# == Schema Information
#
# Table name: document_objects
#
#  id                 :integer          not null, primary key
#  record_id          :integer
#  version            :integer
#  variant_format     :string(255)
#  format             :string(255)
#  format_details     :string(255)
#  checksum           :string(255)
#  checksum_algorithm :string(255)
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
