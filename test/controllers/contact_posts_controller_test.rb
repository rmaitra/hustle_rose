require 'test_helper'

class ContactPostsControllerTest < ActionController::TestCase
  setup do
    @contact_post = contact_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_post" do
    assert_difference('ContactPost.count') do
      post :create, contact_post: { description: @contact_post.description, title: @contact_post.title }
    end

    assert_redirected_to contact_post_path(assigns(:contact_post))
  end

  test "should show contact_post" do
    get :show, id: @contact_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_post
    assert_response :success
  end

  test "should update contact_post" do
    patch :update, id: @contact_post, contact_post: { description: @contact_post.description, title: @contact_post.title }
    assert_redirected_to contact_post_path(assigns(:contact_post))
  end

  test "should destroy contact_post" do
    assert_difference('ContactPost.count', -1) do
      delete :destroy, id: @contact_post
    end

    assert_redirected_to contact_posts_path
  end
end
