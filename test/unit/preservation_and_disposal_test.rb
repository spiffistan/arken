# == Schema Information
#
# Table name: preservation_and_disposals
#
#  id                 :integer          not null, primary key
#  disposal_decision  :text
#  disposal_authority :text
#  preservation_time  :integer
#  disposed_of_by_id  :integer
#  disposed_of_at     :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PreservationAndDisposalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
