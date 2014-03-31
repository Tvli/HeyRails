require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should login" do
    teng = users(:one)
    post :create, name: teng.name, password: "pass"
    assert_redirected_to admin_url
    assert_equal teng.id, session[:user_id]
  end

  test "should fail login" do
    teng = users(:one)
    post :create, name: teng.name, password: 'wrong'
    assert_redirected_to login_url
  end

  test "should logout" do
    get :destroy
    assert_redirected_to store_url
  end

end
