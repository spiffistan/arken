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

class Classification < ActiveRecord::Base

  belongs_to :parent, class_name: 'Classification'
  belongs_to :classification_system

  has_many :children, class_name: 'Classification', foreign_key: 'parent_id'

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable

end
