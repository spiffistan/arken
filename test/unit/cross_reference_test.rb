# == Schema Information
#
# Table name: cross_references
#
#  id         :integer          not null, primary key
#  from_type  :string(255)
#  from_id    :integer
#  to_type    :string(255)
#  to_id      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CrossReferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
