# == Schema Information
#
# Table name: remarks
#
#  id              :integer          not null, primary key
#  remarkable_type :string
#  remarkable_id   :integer
#  text            :text
#  type            :integer
#  created_by_id   :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class RemarkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
