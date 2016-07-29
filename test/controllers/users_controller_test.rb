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

  test "can't sign up without valid emails" do
    count = User.count
    new_user = User.sign_up("poo")

    assert_equal count,User.count
    refute new_user.valid?
  end

  test "emails r uniq" do
    count = User.count
    new_user = User.sign_up("martin@martin.com")
    new_user = User.sign_up("martin@martin.com")

    assert_equal count+1,User.count
  end


end
