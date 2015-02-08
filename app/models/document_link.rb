# == Schema Information
#
# Table name: document_links
#
#  id                      :integer          not null, primary key
#  document_description_id :integer
#  record_id               :integer
#  role                    :integer
#  linked_at               :datetime
#  linked_by_id            :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class DocumentLink < ActiveRecord::Base
  belongs_to :document
  belongs_to :record
  belongs_to :linked_by
  attr_accessible :linked_at, :role
end
