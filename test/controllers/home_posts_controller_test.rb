require 'test_helper'

class HomePostsControllerTest < ActionController::TestCase
  setup do
    @home_post = home_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:home_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create home_post" do
    assert_difference('HomePost.count') do
      post :create, home_post: { description: @home_post.description, title: @home_post.title }
    end

    assert_redirected_to home_post_path(assigns(:home_post))
  end

  test "should show home_post" do
    get :show, id: @home_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @home_post
    assert_response :success
  end

  test "should update home_post" do
    patch :update, id: @home_post, home_post: { description: @home_post.description, title: @home_post.title }
    assert_redirected_to home_post_path(assigns(:home_post))
  end

  test "should destroy home_post" do
    assert_difference('HomePost.count', -1) do
      delete :destroy, id: @home_post
    end

    assert_redirected_to home_posts_path
  end
end
