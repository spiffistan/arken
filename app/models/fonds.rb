# == Schema Information
#
# Table name: fonds
#
#  id              :integer          not null, primary key
#  parent_id       :integer
#  title           :string(255)
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Fonds < ActiveRecord::Base

  include Finalizable

  has_and_belongs_to_many :records_creator

  has_many :fonds, foreign_key: 'parent_id'
  
  belongs_to :parent, class_name: 'Fonds'
  belongs_to :created_by

end
