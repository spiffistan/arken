# == Schema Information
#
# Table name: cross_references
#
#  id         :integer          not null, primary key
#  from_type  :string
#  from_id    :integer
#  to_type    :string
#  to_id      :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CrossReferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
