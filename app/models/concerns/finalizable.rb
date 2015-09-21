module Finalizable
  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by, class_name: 'User'

    attr_readonly :finalized_by
    attr_readonly :finalized_at

    before_destroy    { fail ActiveRecord::ReadOnlyRecord if finalized? }
    before_validation { fail ActiveRecord::ReadOnlyRecord if persisted? && (finalized? || finalization_changed?) }

    validates :finalized_by, presence: true, if: -> { finalized? }
    validates :finalized_at, presence: true, if: -> { finalized? }

    def finalized?
      finalized_at.present? || finalizable_parents.map(&:finalized?).any?
    end

    def readonly?
      persisted? && finalized?
    end

    private

    def finalization_changed?
      finalized_at_changed? || finalized_by_id_changed?
    end
  end
end
