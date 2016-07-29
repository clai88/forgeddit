require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "the truth" do
    assert true
  end

  test "can sign up user" do
    count = User.count
    User.sign_up("g@gmail.com")

    assert_equal count+1, User.count
  end
end
