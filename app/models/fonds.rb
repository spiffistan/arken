# == Schema Information
#
# Table name: fonds
#
#  id                 :integer          not null, primary key
#  records_creator_id :integer
#  parent_id          :integer
#  title              :string
#  description        :text
#  finalized_by_id    :integer
#  finalized_at       :datetime
#  created_by_id      :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Fonds < ActiveRecord::Base

  attr_readonly :created_at

  include Finalizable

  has_and_belongs_to_many :records_creator

  has_many :fonds, foreign_key: 'parent_id'

  belongs_to :parent, class_name: 'Fonds'
  belongs_to :created_by, class_name: 'User'

end
