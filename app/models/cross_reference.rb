# == Schema Information
#
# Table name: cross_references
#
#  id         :integer          not null, primary key
#  from_type  :string
#  from_id    :integer
#  to_type    :string
#  to_id      :integer
#  created_at :datetime
#  updated_at :datetime
#

class CrossReference < ActiveRecord::Base

  audited

  belongs_to :from, polymorphic: true
  belongs_to :to,   polymorphic: true

end
