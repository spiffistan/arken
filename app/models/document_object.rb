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

  belongs_to :documentable
  # constraint xorit check( (x_id OR y_id) AND NOT(x_id AND y_id))
end
