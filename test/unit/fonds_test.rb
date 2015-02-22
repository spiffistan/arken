# == Schema Information
#
# Table name: fonds
#
#  id              :integer          not null, primary key
#  uuid            :uuid
#  ancestry        :string
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class FondsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
