# == Schema Information
#
# Table name: taggings
#
#  id            :integer          not null, primary key
#  tag_id        :integer
#  taggable_id   :integer
#  taggable_type :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Tagging < ActiveRecord::Base
  attr_accessible :tag_id, :taggable_id, :taggable_type

  belongs_to :tag
  belongs_to :taggable, :polymorphic => true
end
