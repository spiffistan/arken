module PreservableAndDisposable
  extend ActiveSupport::Concern

  included do
    belongs_to :preservation_and_disposal
  end

end
