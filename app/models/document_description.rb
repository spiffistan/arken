# == Schema Information
#
# Table name: document_descriptions
#
#  id                           :integer          not null, primary key
#  title                        :string(255)
#  description                  :text
#  document_type                :integer          default(0)
#  integer                      :integer          default(0)
#  document_status              :integer          default(0)
#  author_id                    :integer
#  preservation_and_disposal_id :integer
#  screening_id                 :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class DocumentDescription < ActiveRecord::Base
  self.inheritance_column = nil # Use 'type' as a regular column
end
