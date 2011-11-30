require 'test_helper'

class TestControllerTest < ActionController::TestCase

  test "should require login" do
    assert_throws :warden do
      get :show
    end
  end
  
  test "should allow a logged in user" do
    login_user
    get :show
    assert_response :success
  end
end