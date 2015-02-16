module Finalizable

  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by, class_name: 'User'

    before_validation { raise ReadOnlyRecord if finalized? } # Deny updates
    before_destroy    { raise ReadOnlyRecord if finalized? } # Deny destruction
  end

  def finalized?
    finalized_at.present?
  end

  def readonly?
    finalized?
  end

end
