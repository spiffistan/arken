module Finalizable
  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by, class_name: 'User'
  end

  def finalized?
    finalized_at.present?
  end
end
