ENV["RAILS_ENV"] = "test"
require 'devise'
require 'factory_girl_rails'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
include Devise::TestHelpers
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  #fixtures :all
  Factory.define :user do |user|
    user.email                  "donabrams+test@gmail.com"
    user.password               "password2"
    user.password_confirmation  "password2"
  end
  def login_user
    sign_in Factory.create(:user)
  end
end