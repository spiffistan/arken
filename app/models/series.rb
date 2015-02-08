# == Schema Information
#
# Table name: series
#
#  id                           :integer          not null, primary key
#  fonds_id                     :integer
#  classification_system_id     :integer
#  precursor_id                 :integer
#  successor_id                 :integer
#  title                        :string(255)
#  description                  :text
#  screening_id                 :integer
#  preservation_and_disposal_id :integer
#  records_period_start_at      :datetime
#  records_period_end_at        :datetime
#  finalized_by_id              :integer
#  finalized_at                 :datetime
#  created_by_id                :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class Series < ActiveRecord::Base

  belongs_to :fonds
  belongs_to :classification_system
  belongs_to :precursor
  belongs_to :successor

  include Screenable
  include PreservableAndDisposable
  include Finalizable

end
