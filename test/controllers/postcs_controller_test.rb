require 'test_helper'

class PostcsControllerTest < ActionController::TestCase
  setup do
    @postc = postcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postc" do
    assert_difference('Postc.count') do
      post :create, postc: { : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., address: @postc.address, baths: @postc.baths, city: @postc.city, country: @postc.country, home_type: @postc.home_type, post_description: @postc.post_description, post_title: @postc.post_title, price: @postc.price, price: @postc.price, price_type: @postc.price_type, rooms: @postc.rooms, user_idfk: @postc.user_idfk, zip: @postc.zip }
    end

    assert_redirected_to postc_path(assigns(:postc))
  end

  test "should show postc" do
    get :show, id: @postc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postc
    assert_response :success
  end

  test "should update postc" do
    patch :update, id: @postc, postc: { : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., : @postc., address: @postc.address, baths: @postc.baths, city: @postc.city, country: @postc.country, home_type: @postc.home_type, post_description: @postc.post_description, post_title: @postc.post_title, price: @postc.price, price: @postc.price, price_type: @postc.price_type, rooms: @postc.rooms, user_idfk: @postc.user_idfk, zip: @postc.zip }
    assert_redirected_to postc_path(assigns(:postc))
  end

  test "should destroy postc" do
    assert_difference('Postc.count', -1) do
      delete :destroy, id: @postc
    end

    assert_redirected_to postcs_path
  end
end
