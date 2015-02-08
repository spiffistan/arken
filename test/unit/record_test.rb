# == Schema Information
#
# Table name: records
#
#  id                           :integer          not null, primary key
#  filing_id                    :integer
#  series_id                    :integer
#  classification_id            :integer
#  identifier                   :string(255)
#  title                        :string(255)
#  official_title               :string(255)
#  description                  :text
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

require 'test_helper'

class RecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
