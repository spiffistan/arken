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

  def assert_has_many(model, association)
    assert_reflects_on model, association, :has_many
  end

  def assert_belongs_to(model, association)
    assert_reflects_on model, association, :belongs_to
  end

  def assert_has_and_belongs_to_many(model, association)
    assert_reflects_on model, association, :has_and_belongs_to_many
  end

  def assert_has_one(model, association)
    assert_reflects_on model, association, :has_one
  end

  private

  def assert_reflects_on(model, association, macro)
    assert model.to_s.classify.constantize.reflect_on_association(association).macro == macro
  end

end
