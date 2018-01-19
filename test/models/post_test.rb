require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:usertest)
    @post = @user.posts.build(content: "Hello, world!")
  end

  test "should be valid" do
    assert @post.valid?
  end

  
  test "content should be present" do
    @post.content = "  "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @post.content = "a" * 600
    assert_not @user.valid?
  end
end
