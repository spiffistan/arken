ENV['RAILS_ENV'] = 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  NOT_YET_IMPLEMENTED = false

  self.use_transactional_fixtures = true

  ActiveRecord::Migration.check_pending!

  # extend MiniTest::Spec::DSL
  #
  # include Capybara::DSL
  # include Capybara::Assertions
  include FactoryGirl::Syntax::Methods
  include Rails.application.routes.url_helpers

  # register_spec_type self do |desc|
  #   desc < ActiveRecord::Base if desc.is_a? Class
  # end

  def open_test_file(name)
    File.open(Rails.root.join('test', 'data', name))
  end

  def assert_has_many(model, association, opts = {})
    assert_reflects_on model, association, :has_many, opts
  end

  def assert_belongs_to(model, association, opts = {})
    assert_reflects_on model, association, :belongs_to, opts
  end

  def assert_has_and_belongs_to_many(model, association, opts = {})
    assert_reflects_on model, association, :has_and_belongs_to_many, opts
  end

  def assert_has_one(model, association, opts = {})
    assert_reflects_on model, association, :has_one, opts
  end

  private

  def assert_reflects_on(model, association, relation_type, opts = {})
    reflection = model.to_s.classify.constantize.reflect_on_association(association)
    assert reflection.macro == relation_type
    assert reflection.options == opts
  end


end
