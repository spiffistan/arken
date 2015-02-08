class Filing < ActiveRecord::Base
  belongs_to :classification
  belongs_to :series
  belongs_to :parent
  # attr_accessible :title, :body
end
