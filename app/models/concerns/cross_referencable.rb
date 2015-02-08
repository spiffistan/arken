module CrossReferencable
  extend ActiveSupport::Concern

  included do
    has_many :cross_references
  end
end
