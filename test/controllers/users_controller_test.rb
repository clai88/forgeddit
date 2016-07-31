require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "create new user" do
    assert_difference "User.count", 1 do
      post :create, {user: {email: "example1@example.com"}}
    end
  end

  test "only valid emails added" do
    count = User.count
    User.sign_up("poo")

    assert_equal count, User.count
  end
end
