require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get userview" do
    get :userview
    assert_response :success
  end

end
