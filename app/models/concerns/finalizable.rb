module Finalizable

  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by, class_name: 'User'

    before_destroy { raise ActiveRecord::ReadOnlyRecord if finalized? }

    validates :finalized_by, presence: true, if: -> { finalized? }
  end

  def finalized?
    finalized_at.present? ||
    ancestors.map(&:finalized?).any? rescue false ||
    finalizable_parents.map(&:finalized?).any? rescue false
  end

  def readonly?
    persisted? && finalized?
  end

end
