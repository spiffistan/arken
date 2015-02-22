ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  # fixtures :all

  NOT_YET_IMPLEMENTED = false

  def assert_has_many(model, association, opts={})
    assert_reflects_on model, association, :has_many, opts
  end

  def assert_belongs_to(model, association, opts={})
    assert_reflects_on model, association, :belongs_to, opts
  end

  def assert_has_and_belongs_to_many(model, association, opts={})
    assert_reflects_on model, association, :has_and_belongs_to_many, opts
  end

  def assert_has_one(model, association, opts={})
    assert_reflects_on model, association, :has_one, opts
  end

  private

  def assert_reflects_on(model, association, relation_type, opts={})
    reflection = model.to_s.classify.constantize.reflect_on_association(association)
    assert reflection.macro == relation_type
    # assert reflection.options == opts
  end

end
