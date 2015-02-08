class Series < ActiveRecord::Base
  belongs_to :fond
  belongs_to :classification_system
  # attr_accessible :title, :body
end
