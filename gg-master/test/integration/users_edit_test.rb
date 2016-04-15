require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:lazlov)
  end

  test "unsuccessful edit" do
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), user: { name:  "",
                                    email: "lazlovpc@gmail.com",
                                    password:              "Stur1993",
                                    password_confirmation: "Stur1993" }
    assert_template 'users/edit'
  end
end