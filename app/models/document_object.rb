# == Schema Information
#
# Table name: document_objects
#
#  id                 :integer          not null, primary key
#  documentable_id    :integer
#  documentable_type  :string
#  version            :string
#  variant            :string
#  format             :string
#  format_details     :string
#  checksum           :string
#  checksum_algorithm :string
#  file_size          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class DocumentObject < ActiveRecord::Base

  audited

  belongs_to :documentable, polymorphic: true

  validates :documentable, presence: true

end
