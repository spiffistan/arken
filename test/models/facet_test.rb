# == Schema Information
#
# Table name: facets
#
#  id                       :integer          not null, primary key
#  name                     :string
#  description              :text
#  classification_system_id :integer
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

require 'test_helper'

class FacetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
