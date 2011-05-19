require 'test_helper'

class LabyrinthsControllerTest < ActionController::TestCase
  setup do
    @labyrinth = labyrinths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:labyrinths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create labyrinth" do
    assert_difference('Labyrinth.count') do
      post :create, :labyrinth => @labyrinth.attributes
    end

    assert_redirected_to labyrinth_path(assigns(:labyrinth))
  end

  test "should show labyrinth" do
    get :show, :id => @labyrinth.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @labyrinth.to_param
    assert_response :success
  end

  test "should update labyrinth" do
    put :update, :id => @labyrinth.to_param, :labyrinth => @labyrinth.attributes
    assert_redirected_to labyrinth_path(assigns(:labyrinth))
  end

  test "should destroy labyrinth" do
    assert_difference('Labyrinth.count', -1) do
      delete :destroy, :id => @labyrinth.to_param
    end

    assert_redirected_to labyrinths_path
  end
end
