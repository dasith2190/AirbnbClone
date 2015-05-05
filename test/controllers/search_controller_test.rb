require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get searchresult" do
    get :searchresult
    assert_response :success
  end

end
