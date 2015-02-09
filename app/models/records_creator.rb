class RecordsCreator < ActiveRecord::Base
  has_and_belongs_to_many :fonds
end
