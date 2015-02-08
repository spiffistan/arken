# == Schema Information
#
# Table name: classifications
#
#  id                           :integer          not null, primary key
#  parent_id                    :integer
#  classification_system_id     :integer
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class Classification < ActiveRecord::Base

  belongs_to :classification_system

  include Finalizable
  include Screenable
  include PreservableAndDisposable
  include Taggable
  include CrossReferencable

end
