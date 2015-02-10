module CrossReferencable
  extend ActiveSupport::Concern

  included do
    has_many :cross_references_in,  class_name: 'CrossReference', as: 'from', foreign_key: 'from_id'
    has_many :cross_references_out, class_name: 'CrossReference', as: 'to',   foreign_key: 'to_id'
  end
end
