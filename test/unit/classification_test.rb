# == Schema Information
#
# Table name: classifications
#
#  id                           :integer          not null, primary key
#  parent_id                    :integer
#  classification_system_id     :integer          not null
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime
#  updated_at                   :datetime
#

require 'test_helper'

class ClassificationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
