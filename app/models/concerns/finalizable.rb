module Finalizable
  extend ActiveSupport::Concern

  included do
    belongs_to :finalized_by, class_name: 'User'

    before_destroy { fail ActiveRecord::ReadOnlyRecord if finalized? }
    before_save    { fail ActiveRecord::ReadOnlyRecord if persisted? && finalized? }

    validates :finalized_by, presence: true, if: -> { finalized? }
    validates :finalized_at, presence: true, if: -> { finalized? }

    def finalized?
      finalized_at.present? || finalizable_parents.map(&:finalized?).any?
    end

    def readonly?
      persisted? && finalized?
    end
  end
end
