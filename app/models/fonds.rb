# == Schema Information
#
# Table name: fonds
#
#  id              :integer          not null, primary key
#  uuid            :uuid
#  ancestry        :string
#  title           :string
#  description     :text
#  finalized_by_id :integer
#  finalized_at    :datetime
#  created_by_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Fonds < ActiveRecord::Base

  include Finalizable

  audited

  has_ancestry

  belongs_to :created_by, class_name: 'User'

  has_many :fonds_creations
  has_many :fonds_creators, through: :fonds_creations
  has_many :series

  attr_readonly :created_at

  validates :fonds_creators, presence: true

  # validate :validate_created_at_frozen, if: :persisted?

  enum status: %i(
    created
    finalized
  )

  def finalizable_parents
    ancestors
  end

  # private
  #
  # def validate_created_at_frozen
  #   errors.add(:base, 'Cannot alter `created_at` once set!') if created_at_changed?
  # end

end
