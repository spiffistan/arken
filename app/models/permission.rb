# == Schema Information
#
# Table name: permissions
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  subject_type :string           not null
#  subject_id   :integer
#  action       :string           not null
#  description  :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Permission < ActiveRecord::Base
  audited

  belongs_to :user
end
