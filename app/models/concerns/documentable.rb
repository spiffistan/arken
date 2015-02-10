module Documentable
  extend ActiveSupport::Concern

  included do
    has_many :documents, as: :documentable, class_name: 'DocumentObject'
  end
end
