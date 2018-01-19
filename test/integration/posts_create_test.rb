require 'test_helper'

class PostsCreateTest < ActionDispatch::IntegrationTest

  def setup
    @user = users(:usertest)
  end

  test "unsuccessful edit" do
    get root_url
    assert_no_difference 'Post.count' do
      post posts_path, params: { post: { content: "Hello world!",
                                             user_id: @user.id } }
    end
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "successful create" do
    log_in_as(@user)
    get root_url
    assert_difference 'Post.count', 1 do
      post posts_path, params: { post: { content: "Hello world!",
                                             user_id: @user.id } }
    end
    assert_not flash.empty?
    assert_redirected_to root_url
  end
end
