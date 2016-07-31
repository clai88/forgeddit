require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "login works" do
    post :create {user: {email: "clai88@gmail.com"}}
  end

end
