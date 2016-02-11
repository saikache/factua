require 'test_helper'

class ChesControllerTest < ActionController::TestCase
  setup do
    @ch = ches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ch" do
    assert_difference('Ch.count') do
      post :create, ch: { content: @ch.content }
    end

    assert_redirected_to ch_path(assigns(:ch))
  end

  test "should show ch" do
    get :show, id: @ch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ch
    assert_response :success
  end

  test "should update ch" do
    patch :update, id: @ch, ch: { content: @ch.content }
    assert_redirected_to ch_path(assigns(:ch))
  end

  test "should destroy ch" do
    assert_difference('Ch.count', -1) do
      delete :destroy, id: @ch
    end

    assert_redirected_to ches_path
  end
end
