require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get spot" do
    get :spot
    assert_response :success
  end

end
