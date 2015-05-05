require 'test_helper'

class MessageControllerTest < ActionController::TestCase
  test "should get sendmessage" do
    get :sendmessage
    assert_response :success
  end

  test "should get success" do
    get :success
    assert_response :success
  end

end
