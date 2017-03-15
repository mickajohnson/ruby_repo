require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

end
