class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, unless: -> { Rails.env.development? }
end
