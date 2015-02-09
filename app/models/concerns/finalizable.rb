module Finalizable
  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by
  end
end
