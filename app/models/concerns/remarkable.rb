module Remarkable
  extend ActiveSupport::Concern

  included do
    has_many :remarks
  end
end
