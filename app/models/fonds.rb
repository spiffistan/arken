# == Schema Information
#
# Table name: fonds
#
#  id                 :integer          not null, primary key
#  ancestry           :string
#  records_creator_id :integer
#  title              :string
#  description        :text
#  finalized_by_id    :integer
#  finalized_at       :datetime
#  created_by_id      :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class Fonds < ActiveRecord::Base

  has_ancestry
  audited

  belongs_to :created_by, class_name: 'User'

  has_and_belongs_to_many :records_creators
  has_many :series

  attr_readonly :created_at

  include Finalizable

end
