module CrossReferencable
  extend ActiveSupport::Concern

  included do
    has_many :cross_references_in,  class_name: 'CrossReference', as: 'to'
    has_many :cross_references_out, class_name: 'CrossReference', as: 'from'
  end

  def add_reference(reference)
    CrossReference.create(from_type: self.class.to_s, from_id: self.id, to_type: reference.class.to_s, to_id: reference.id)
  end

end
