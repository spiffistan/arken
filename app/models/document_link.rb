class DocumentLink < ActiveRecord::Base
  belongs_to :document
  belongs_to :record
  belongs_to :linked_by
  attr_accessible :linked_at, :role
end
