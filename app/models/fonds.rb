class Fonds < ActiveRecord::Base

  include Finalizable
  
  has_many :fonds
  belongs_to :parent
end
