# == Schema Information
#
# Table name: document_objects
#
#  id                 :integer          not null, primary key
#  documentable_id    :integer
#  documentable_type  :string
#  version            :integer
#  variant_format     :string
#  format             :string
#  format_details     :string
#  checksum           :string
#  checksum_algorithm :string
#  file_size          :integer
#  created_at         :datetime
#  updated_at         :datetime
#

class DocumentObject < ActiveRecord::Base

  audited

  belongs_to :documentable, polymorphic: true

  validates :documentable, presence: true

end
