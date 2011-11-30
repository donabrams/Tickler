class TestController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @email = current_user.email
  end
end