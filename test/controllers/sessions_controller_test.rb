require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "login works" do

    # post :create {user: {email: "clai88@gmail.com"}}
    #
    # refute_equal nil, session[:user_id]
  end

  test "sing out works" do
    assert_not_nil session[:user_id]
    delete :destroy

    assert_equal nil, session[:user_id]
  end

end
