class CrossReference < ActiveRecord::Base
  attr_accessible :from_id, :from_type, :to_id, :to_type
end
