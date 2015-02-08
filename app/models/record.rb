class Record < ActiveRecord::Base
  belongs_to :filing
  belongs_to :series
end
