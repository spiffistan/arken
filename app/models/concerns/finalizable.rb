module Finalizable
  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by
    attr_accessor :finalized_at
  end
end
