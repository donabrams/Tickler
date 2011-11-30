require 'test_helper'

class FleetControllerTest < ActionController::TestCase
  test "should require login" do
    assert_true member_signed_in?
    get :show
    #assert_response :success
  end
  test "should not require login" do
    assert_false member_signed_in?
    get :show
    assert_response :success
  end
end