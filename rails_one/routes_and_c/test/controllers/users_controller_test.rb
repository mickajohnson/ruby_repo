require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get say_hello" do
    get :say_hello
    assert_response :success
  end

  test "should get hello_joe" do
    get :hello_joe
    assert_response :success
  end

  test "should get hello_michael" do
    get :hello_michael
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get counter" do
    get :counter
    assert_response :success
  end

  test "should get counter_reset" do
    get :counter_reset
    assert_response :success
  end

end
