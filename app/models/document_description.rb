class DocumentDescription < ActiveRecord::Base
  self.inheritance_column = nil # Use 'type' as a regular column
end
