require 'test_helper'

class YelpsControllerTest < ActionController::TestCase
  setup do
    @yelp = yelps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yelps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yelp" do
    assert_difference('Yelp.count') do
      post :create, yelp: { address: @yelp.address, comment: @yelp.comment, descr: @yelp.descr, name: @yelp.name }
    end

    assert_redirected_to yelp_path(assigns(:yelp))
  end

  test "should show yelp" do
    get :show, id: @yelp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yelp
    assert_response :success
  end

  test "should update yelp" do
    patch :update, id: @yelp, yelp: { address: @yelp.address, comment: @yelp.comment, descr: @yelp.descr, name: @yelp.name }
    assert_redirected_to yelp_path(assigns(:yelp))
  end

  test "should destroy yelp" do
    assert_difference('Yelp.count', -1) do
      delete :destroy, id: @yelp
    end

    assert_redirected_to yelps_path
  end
end
