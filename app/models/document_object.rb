# == Schema Information
#
# Table name: document_objects
#
#  id                 :integer          not null, primary key
#  record_id          :integer
#  version            :integer
#  variant_format     :string(255)
#  format             :string(255)
#  format_details     :string(255)
#  checksum           :string(255)
#  checksum_algorithm :string(255)
#  file_size          :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class DocumentObject < ActiveRecord::Base
  # attr_accessible :title, :body
end
