# == Schema Information
#
# Table name: document_descriptions
#
#  id                           :integer          not null, primary key
#  uuid                         :uuid
#  title                        :string
#  description                  :text
#  document_type                :integer          default(0)
#  document_status              :integer          default(0)
#  author_id                    :integer
#  preservation_and_disposal_id :integer
#  screening_id                 :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class DocumentDescription < ActiveRecord::Base
  include PreservableAndDisposable
  include Screenable
  include Documentable
  include Remarkable

  audited

  has_one :document_link
  has_one :record, through: :document_link

  has_many :document_objects, as: :documentable
end
