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

class Facet < ActiveRecord::Base
  belongs_to :classification_system
end
