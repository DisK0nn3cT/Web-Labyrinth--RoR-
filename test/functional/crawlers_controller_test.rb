require 'test_helper'

class CrawlersControllerTest < ActionController::TestCase
  setup do
    @crawler = crawlers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crawlers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crawler" do
    assert_difference('Crawler.count') do
      post :create, :crawler => @crawler.attributes
    end

    assert_redirected_to crawler_path(assigns(:crawler))
  end

  test "should show crawler" do
    get :show, :id => @crawler.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @crawler.to_param
    assert_response :success
  end

  test "should update crawler" do
    put :update, :id => @crawler.to_param, :crawler => @crawler.attributes
    assert_redirected_to crawler_path(assigns(:crawler))
  end

  test "should destroy crawler" do
    assert_difference('Crawler.count', -1) do
      delete :destroy, :id => @crawler.to_param
    end

    assert_redirected_to crawlers_path
  end
end
