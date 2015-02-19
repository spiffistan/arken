class ActiveRecord::Base
  self.inheritance_column = 'object_type' # Use this as default STI identifier instead of 'type'
end
