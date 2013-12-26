require 'test_helper'

class GotelsControllerTest < ActionController::TestCase
  setup do
    @gotel = gotels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gotels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gotel" do
    assert_difference('Gotel.count') do
      post :create, gotel: { room_description: @gotel.room_description, title: @gotel.title }
    end

    assert_redirected_to gotel_path(assigns(:gotel))
  end

  test "should show gotel" do
    get :show, id: @gotel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gotel
    assert_response :success
  end

  test "should update gotel" do
    put :update, id: @gotel, gotel: { room_description: @gotel.room_description, title: @gotel.title }
    assert_redirected_to gotel_path(assigns(:gotel))
  end

  test "should destroy gotel" do
    assert_difference('Gotel.count', -1) do
      delete :destroy, id: @gotel
    end

    assert_redirected_to gotels_path
  end
end
