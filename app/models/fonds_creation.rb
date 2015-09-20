class FondsCreation < ActiveRecord::Base
  belongs_to :fonds
  belongs_to :fonds_creator
end
