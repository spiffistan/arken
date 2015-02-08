class Remark < ActiveRecord::Base
  belongs_to :created_by
  attr_accessible :remarkable_id, :remarkable_type, :text, :type
end
