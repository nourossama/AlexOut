require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get page" do
    get :page
    assert_response :success
  end

end
