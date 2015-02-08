module Screenable
  extend ActiveSupport::Concern

  included do
    belongs_to :screening
  end
end
