require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest

  setup do
    get '/users/sign_in'
    sign_in users(:one)
    post user_session_url
    @post = posts(:one)
  end

  test "Should get index" do
    get posts_path
    assert_response :success
  end

  test "Should create a Post" do
    assert_difference "Post.count" do
      post posts_path(post: {title: @post.title, content: @post.content})
    end
    assert_redirected_to post_path(assigns(:post))
  end

end
