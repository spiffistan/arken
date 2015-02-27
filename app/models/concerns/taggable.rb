module Taggable
  extend ActiveSupport::Concern

  included do
    has_many :taggings, as: :taggable
    has_many :tags, through: :taggings
  end

  def tag(name)
    name.strip!
    tag = Tag.find_or_create_by(text: name)
    taggings.find_or_create_by(tag_id: tag.id)
  end

  def tag_names
    tags.collect(&:text)
  end
end
