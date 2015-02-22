# == Schema Information
#
# Table name: fonds
#
#  id              :integer          not null, primary key
#  ancestry        :string
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Fonds < ActiveRecord::Base

  include Finalizable

  audited
  
  has_ancestry

  belongs_to :created_by, class_name: 'User'
  has_and_belongs_to_many :fonds_creators
  has_many :series

  attr_readonly :created_at

  validates :fonds_creators, presence: true

end
